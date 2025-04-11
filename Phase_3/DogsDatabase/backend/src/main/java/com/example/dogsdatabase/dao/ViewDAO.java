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
    
    public List<MonthlyAdoptionReportItemVO> getMonthlyAdoptionReport() {
        String sql = """
        WITH PAST_12MTHS AS (
        SELECT DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL (m) MONTH), '%Y-%m') AS month 
        FROM ( SELECT 1 AS m UNION ALL
            SELECT 2 UNION ALL 
            SELECT 3 UNION ALL 
            SELECT 4 UNION ALL 
            SELECT 5 UNION ALL 
            SELECT 6 UNION ALL 
            SELECT 7 UNION ALL 
            SELECT 8 UNION ALL 
            SELECT 9 UNION ALL 
            SELECT 10 UNION ALL 
            SELECT 11 UNION ALL 
            SELECT 12
        ) AS months),
        DOG_STATUS AS (
        SELECT 
            dog.dogID, 
            GROUP_CONCAT(DISTINCT dogbreed.breedname ORDER BY dogbreed.breedname SEPARATOR ', ') AS breed_names, 
            dog.surrender_date AS surrender_date, 
            adoptiondetails.adoption_date AS adoption_date,
            IFNULL(adoptiondetails.adoption_fee, 0) AS adoption_fee,
            CASE 
                WHEN individual.surrenderID IS NULL THEN 0 
                ELSE 1 
            END AS SurrenderedbyIndividual 
        FROM dog 
        LEFT JOIN adoptiondetails ON adoptiondetails.dogID = dog.dogID
        LEFT JOIN dogbreed ON dogbreed.dogID = dog.dogID 
        LEFT JOIN individual ON dog.surrenderID = individual.surrenderID 
        GROUP BY dog.dogID, dog.surrender_date, adoption_date, adoption_fee
        )

        SELECT 
        PAST_12MTHS.`month`, 
        DOG_STATUS.breed_names, 
        COUNT(PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.surrender_date, '%Y-%m')) AS DogsSurrendered, 
        COUNT(PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.adoption_date, '%Y-%m')) AS DogsAdopted, 
        IFNULL(SUM(expense.amount), 0) AS TotalExpenses, 
        IFNULL(SUM(DOG_STATUS.adoption_fee), 0) AS AdoptionFees, 
        (IFNULL(SUM(DOG_STATUS.adoption_fee), 0) - IFNULL(SUM(expense.amount), 0) * IFNULL(ANY_VALUE(DOG_STATUS.SurrenderedbyIndividual), 0)) AS NetProfit 
        FROM PAST_12MTHS 
        LEFT JOIN DOG_STATUS ON (PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.adoption_date, '%Y-%m') OR PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.surrender_date, '%Y-%m')) 
        LEFT JOIN expense ON expense.dogID = DOG_STATUS.dogID AND PAST_12MTHS.`month` = DATE_FORMAT(DOG_STATUS.adoption_date, '%Y-%m')
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
