package com.example.dogsdatabase.dao;

import java.time.YearMonth;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.vo.MonthlyAdoptionReportItemVO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ViewDAO {

    private final JdbcTemplate jdbcTemplate;

    public void createPast12MonthsView()
    {
        String dropViewSQL = "DROP VIEW IF EXISTS PAST_12MTHS";
        String createViewSQL = """
            CREATE VIEW PAST_12MTHS AS 
            SELECT DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL (m-1) MONTH), '%Y-%m') AS month 
            FROM ( 
                SELECT 0 AS m UNION ALL 
                SELECT 1 UNION ALL 
                SELECT 2 UNION ALL 
                SELECT 3 UNION ALL 
                SELECT 4 UNION ALL 
                SELECT 5 UNION ALL 
                SELECT 6 UNION ALL 
                SELECT 7 UNION ALL 
                SELECT 8 UNION ALL 
                SELECT 9 UNION ALL 
                SELECT 10 UNION ALL 
                SELECT 11
            ) AS months;
        """;
        // Execute DROP first to prevent conflicts
        jdbcTemplate.execute(dropViewSQL);
        // Execute CREATE VIEW
        jdbcTemplate.execute(createViewSQL);
    }
    public void createDogStatusView() {
        String dropViewSQL = "DROP VIEW IF EXISTS DOG_STATUS";

        String createViewSQL = """
            CREATE VIEW DOG_STATUS AS 
            SELECT 
                dog.dogID, 
                GROUP_CONCAT(DISTINCT dogbreed.breedname ORDER BY dogbreed.breedname SEPARATOR ', ') AS breed_names, 
                ANY_VALUE(dog.surrender_date) AS surrender_date, 
                ANY_VALUE(adoptiondetails.adoption_date) AS adoption_date, 
                CASE 
                    WHEN individual.surrenderID IS NULL THEN 0 
                    ELSE 1 
                END AS SurrenderedbyIndividual 
            FROM dog 
            LEFT JOIN approvedapplication ON approvedapplication.dogID = dog.dogID 
            LEFT JOIN adoptiondetails 
                ON adoptiondetails.application_date = approvedapplication.application_date 
                AND adoptiondetails.email = approvedapplication.email 
            LEFT JOIN dogbreed ON dogbreed.dogID = dog.dogID 
            LEFT JOIN individual ON dog.surrenderID = individual.surrenderID 
            GROUP BY dog.dogID;
        """;

        // Execute DROP first to avoid conflicts
        jdbcTemplate.execute(dropViewSQL);

        // Execute CREATE VIEW
        jdbcTemplate.execute(createViewSQL);
    }
    public List<MonthlyAdoptionReportItemVO> getMonthlyAdoptionReport() {
        String sql = """
            SELECT 
            PAST_12MTHS.`month`, 
            DOG_STATUS.breed_names, 
            COUNT(PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.surrender_date, '%Y-%m')) AS DogsSurrendered, 
            COUNT(PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.adoption_date, '%Y-%m')) AS DogsAdopted, 
            IFNULL(SUM(expense.amount), 0) AS TotalExpenses, 
            IFNULL(SUM(adoptiondetails.adoption_fee), 0) AS AdoptionFees, 
            (IFNULL(SUM(adoptiondetails.adoption_fee), 0) - IFNULL(SUM(expense.amount), 0) * IFNULL(ANY_VALUE(DOG_STATUS.SurrenderedbyIndividual), 0)) AS NetProfit 
            FROM PAST_12MTHS 
            LEFT JOIN DOG_STATUS ON 
            (PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.adoption_date, '%Y-%m') 
            OR 
            PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.surrender_date, '%Y-%m')) 
            LEFT JOIN approvedapplication ON approvedapplication.dogID = DOG_STATUS.dogID 
            LEFT JOIN adoptiondetails ON adoptiondetails.application_date = 
            approvedapplication.application_date AND adoptiondetails.email = 
            approvedapplication.email AND PAST_12MTHS.`month` = 
            DATE_FORMAT(adoptiondetails.adoption_date, '%Y-%m') 
            LEFT JOIN expense ON expense.dogID = DOG_STATUS.dogID AND 
            PAST_12MTHS.`month` = DATE_FORMAT(expense.expense_date, '%Y-%m') 
            GROUP BY PAST_12MTHS.`month`, breed_names 
            ORDER BY PAST_12MTHS.`month`, breed_names;
        """;
        List<MonthlyAdoptionReportItemVO> resultList = jdbcTemplate.query(sql, (rs, rowNum) -> new MonthlyAdoptionReportItemVO(
            YearMonth.parse(rs.getString("month")),
            rs.getString("breed_names"),
            rs.getInt("DogsSurrendered"),
            rs.getInt("DogsAdopted"),
            rs.getBigDecimal("TotalExpenses"),
            rs.getBigDecimal("AdoptionFees"),
            rs.getBigDecimal("NetProfit")
        ));
        return resultList;
    }

}
