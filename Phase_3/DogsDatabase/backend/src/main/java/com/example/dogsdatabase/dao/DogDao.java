package com.example.dogsdatabase.dao;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.po.BreedPO;
import com.example.dogsdatabase.entity.po.DogPO;
import com.example.dogsdatabase.entity.po.Sex;
import com.example.dogsdatabase.entity.vo.DogDetailsVO;
import com.example.dogsdatabase.entity.vo.DogReportVO;
import com.example.dogsdatabase.entity.vo.DogVO;

import lombok.RequiredArgsConstructor;

/**
 * @Title: DogDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/3/29 19:34
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class DogDao {
    private final JdbcTemplate jdbcTemplate;

    public Integer insertDog(DogVO dog) {
        String tableName = "dog";
        List<Object> params = new ArrayList<>();  // 改用位置参数列表
        StringBuilder columns = new StringBuilder("(");
        StringBuilder values = new StringBuilder("(");

        // 动态构建字段和值
        if (dog.getName()  != null) {
            columns.append("name,");
            values.append("?,");
            params.add(dog.getName());
        }
        if (dog.getSex()  != null) {
            columns.append("sex,");
            values.append("?,");
            params.add(dog.getSex().name());
        }
        if (dog.getSurrender_date()  != null) {
            columns.append("surrender_date,");
            values.append("?,");
            params.add(dog.getSurrender_date());
        }
        if (dog.getAge_when_surrender()  != null) {
            columns.append("age_when_surrender,");
            values.append("?,");
            params.add(dog.getAge_when_surrender());
        }
        if (dog.getAlteration_status()  != null) {
            columns.append("alteration_status,");
            values.append("?,");
            params.add(dog.getAlteration_status());
        }
        if (dog.getDescription()  != null) {
            columns.append("description,");
            values.append("?,");
            params.add(dog.getDescription());
        }
        if (dog.getAdoption_state()  != null) {
            columns.append("adoption_state,");
            values.append("?,");
            params.add(dog.getAdoption_state());
        }
        if (dog.getSurrenderID()  != null) {
            columns.append("surrenderID,");
            values.append("?,");
            params.add(dog.getSurrenderID());
        }

        // 移除末尾逗号并闭合括号
        if (columns.charAt(columns.length()  - 1) == ',') {
            columns.deleteCharAt(columns.length()  - 1);
            values.deleteCharAt(values.length()  - 1);
        }
        columns.append(")");
        values.append(")");

        String sql = "INSERT INTO " + tableName + " " + columns + " VALUES " + values;

        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            for (int i = 0; i < params.size(); i++) {
                ps.setObject(i + 1, params.get(i)); // JDBC is 1-indexed
            }
            return ps;
        }, keyHolder);
        return keyHolder.getKey() != null ?  keyHolder.getKey().intValue() : -1;
    }

    public int updateDog(DogVO dog) {
        StringBuilder sql = new StringBuilder();
        ArrayList<Object> params = new ArrayList<>();
        sql.append("UPDATE dog SET ");
        if (dog.getName() != null) {
            sql.append("name = ?, ");
            params.add(dog.getName());
        }
        if (dog.getSex() != null) {
            sql.append("sex = ?, ");
            params.add(dog.getSex().name()); // Returns "Male", "Female", or "Unknown"
        }
        if (dog.getSurrender_date() != null) {
            sql.append("surrender_date = ?, ");
            params.add(dog.getSurrender_date());
        }
        if (dog.getAge_when_surrender() != null) {
            sql.append("age_when_surrender = ?, ");
            params.add(dog.getAge_when_surrender());
        }
        if (dog.getAlteration_status() != null) {
            sql.append("alteration_status = ?, ");
            params.add(dog.getAlteration_status());
        }
        if (dog.getDescription() != null) {
            sql.append("description = ?, ");
            params.add(dog.getDescription());
        }
        if (dog.getAdoption_state() != null) {
            sql.append("adoption_state = ?, ");
            params.add(dog.getAdoption_state());
        }
        if (dog.getSurrenderID() != null) {
            sql.append("surrenderID = ?, ");
            params.add(dog.getSurrenderID());
        }
        sql.deleteCharAt(sql.length() - 2);
        sql.append(" WHERE dogID = ?");
        params.add(dog.getDogID());

        return jdbcTemplate.update(sql.toString(), params.toArray());
    }

    public int deleteDog(Integer dogID){
        String sql = "DELETE FROM dog WHERE dogID = ?";
        return jdbcTemplate.update(sql, dogID);
    }

    public DogPO getDogByID(Integer dogID){
        String sql = "SELECT * FROM dog WHERE dogID = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{dogID}, (rs, rowNum) -> {
            DogPO dogPO = new DogPO();
            dogPO.setDogID(rs.getInt("dogID"));
            dogPO.setName(rs.getString("name"));
            dogPO.setSex(Sex.valueOf(rs.getString("sex")));
            dogPO.setSurrender_date(rs.getDate("surrender_date").toLocalDate());
            dogPO.setAge_when_surrender(rs.getInt("age_when_surrender"));
            dogPO.setAlteration_status(rs.getBoolean("alteration_status"));
            dogPO.setDescription(rs.getString("description"));
            dogPO.setAdoption_state(rs.getBoolean("adoption_state"));
            dogPO.setSurrenderID(rs.getInt("surrenderID"));
            return dogPO;
        });
    }


    public List<DogPO> getAllDogs() {
        String sql = "SELECT * FROM dog ORDER BY surrender_date ASC";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            DogPO dogPO = new DogPO();
            dogPO.setDogID(rs.getInt("dogID"));
            dogPO.setName(rs.getString("name"));
            dogPO.setSex(Sex.valueOf(rs.getString("sex")));
            dogPO.setSurrender_date(rs.getDate("surrender_date").toLocalDate());
            dogPO.setAge_when_surrender(rs.getInt("age_when_surrender"));
            dogPO.setAlteration_status(rs.getBoolean("alteration_status"));
            dogPO.setDescription(rs.getString("description"));
            dogPO.setAdoption_state(rs.getBoolean("adoption_state"));
            dogPO.setSurrenderID(rs.getInt("surrenderID"));
            return dogPO;
        });
    }
    
    public List<DogReportVO> getAllDogsSurrenderedByLACDInMonth(YearMonth yearMonth)
    {
        String sql = """
        SELECT dog.dogID, dog.sex, dog.alteration_status, microchip.microchipID, dog.surrender_date, GROUP_CONCAT(dogbreed.breedname ORDER BY dogbreed.breedname SEPARATOR '/') AS breeds
        FROM dog JOIN localanimalcontroldepartment ON dog.surrenderId = localanimalcontroldepartment.surrenderId
        LEFT JOIN dogbreed ON dog.dogID = dogbreed.dogID 
        LEFT JOIN microchip ON dog.dogID = microchip.dogID 
        WHERE YEAR(dog.surrender_date) = ? AND MONTH(dog.surrender_date) = ? 
        GROUP BY dog.dogID, dog.sex, dog.alteration_status, microchip.microchipID, dog.surrender_date ORDER BY dog.dogID        
        """;
        List<DogReportVO> dogList = jdbcTemplate.query(sql, (rs, rowNum) -> {
            DogReportVO dogReportVO = new DogReportVO();
            dogReportVO.setDogID(rs.getInt("dogID"));
            dogReportVO.setBreeds(rs.getString("breeds"));
            dogReportVO.setSex(Sex.valueOf(rs.getString("sex")));
            dogReportVO.setAlterationStatus(rs.getBoolean("alteration_status"));
            dogReportVO.setMicrochipID(rs.getString("microchipID"));
            dogReportVO.setSurrenderDate(rs.getDate("surrender_date").toLocalDate());
            return dogReportVO;
        }, yearMonth.getYear(), yearMonth.getMonthValue());
        return dogList;
    }

    public List<DogReportVO> getAllDogsdogsAdoptedAfter60DaysInMonth(YearMonth yearMonth)
    {
        String sql = """
        SELECT dog.dogID, dog.sex, microchip.microchipID, dog.surrender_date, adoptiondetails.adoption_date,
        DATEDIFF(adoptiondetails.adoption_date, dog.surrender_date) + 1 AS days_in_rescue,
        GROUP_CONCAT(dogbreed.breedname ORDER BY dogbreed.breedname SEPARATOR '/') AS breeds
        FROM dog
        JOIN adoptiondetails ON dog.dogID = adoptiondetails.dogID
        LEFT JOIN dogbreed ON dog.dogID = dogbreed.dogID
        LEFT JOIN microchip ON dog.dogID = microchip.dogID
        WHERE YEAR(adoptiondetails.adoption_date) = ? AND MONTH(adoptiondetails.adoption_date) = ?
        AND DATEDIFF(adoptiondetails.adoption_date, dog.surrender_date) + 1 >= 60
        GROUP BY dog.dogID, dog.sex, microchip.microchipID, dog.surrender_date, adoptiondetails.adoption_date
        ORDER BY days_in_rescue DESC;        
        """;
        List<DogReportVO> dogList = jdbcTemplate.query(sql, (rs, rowNum) -> {
            DogReportVO dogReportVO = new DogReportVO();
            dogReportVO.setDogID(rs.getInt("dogID"));
            dogReportVO.setBreeds(rs.getString("breeds"));
            dogReportVO.setSex(Sex.valueOf(rs.getString("sex")));
            dogReportVO.setMicrochipID(rs.getString("microchipID"));
            dogReportVO.setSurrenderDate(rs.getDate("surrender_date").toLocalDate());
            dogReportVO.setAdoptedDate(rs.getDate("adoption_date").toLocalDate());
            dogReportVO.setDaysInRescue(rs.getInt("days_in_rescue"));
            return dogReportVO;
        }, yearMonth.getYear(), yearMonth.getMonthValue());
        return dogList;
    }

    public List<DogReportVO> getAllDogsAdoptedWithExpensesInMonth(YearMonth yearMonth)
    {
        String sql = """
        SELECT dog.dogID, dog.sex, microchip.microchipID, dog.surrender_date, adoptiondetails.adoption_date,  
        GROUP_CONCAT(dogbreed.breedname ORDER BY dogbreed.breedname SEPARATOR '/') AS breeds, total_expenses,
        CASE  
        WHEN localanimalcontroldepartment.surrenderID IS NOT NULL THEN 'Yes'  
        ELSE 'No'   
        END AS Animal_control_surrender_indicator  
        FROM dog   
        JOIN adoptiondetails ON dog.dogID = adoptiondetails.dogID
        LEFT JOIN dogbreed ON dog.dogID = dogbreed.dogID  
        LEFT JOIN microchip ON dog.dogID = microchip.dogID 
        LEFT JOIN localanimalcontroldepartment ON dog.surrenderID = localanimalcontroldepartment.surrenderID
        LEFT JOIN (
            SELECT dogID, SUM(amount) AS total_expenses
            FROM expense
            GROUP BY dogID
        ) AS expenses ON dog.dogID = expenses.dogID
        WHERE YEAR(adoptiondetails.adoption_date) = ? AND MONTH(adoptiondetails.adoption_date) = ?
        GROUP BY dog.dogID, dog.sex, microchip.microchipID, dog.surrender_date, adoptiondetails.adoption_date, Animal_control_surrender_indicator ORDER BY dog.dogID;
        """;
        List<DogReportVO> dogList = jdbcTemplate.query(sql, (rs, rowNum) -> {
            DogReportVO dogReportVO = new DogReportVO();
            dogReportVO.setDogID(rs.getInt("dogID"));
            dogReportVO.setBreeds(rs.getString("breeds"));
            dogReportVO.setSex(Sex.valueOf(rs.getString("sex")));
            dogReportVO.setMicrochipID(rs.getString("microchipID"));
            dogReportVO.setSurrenderDate(rs.getDate("surrender_date").toLocalDate());
            dogReportVO.setAdoptedDate(rs.getDate("adoption_date").toLocalDate());
            dogReportVO.setAnimalControlSurrenderIndicator(rs.getString("Animal_control_surrender_indicator"));
            dogReportVO.setTotalExpenses(rs.getBigDecimal("total_expenses") == null ? BigDecimal.ZERO: rs.getBigDecimal("total_expenses"));
            return dogReportVO;
        }, yearMonth.getYear(), yearMonth.getMonthValue());
        return dogList;
    }
    public DogDetailsVO getDogDetailsByDogID(Integer dogID)
    {
        String sql = """
        SELECT dog.dogID, dog.name, dog.sex, dog.adoption_state,
        dog.alteration_status, dog.age_when_surrender + TIMESTAMPDIFF(MONTH, surrender_date, NOW()) AS current_age_in_months,
        dog.description, microchip.microchipID, dog.surrender_date,
        CASE  
            WHEN localanimalcontroldepartment.phonenumber IS NOT NULL THEN localanimalcontroldepartment.phonenumber 
            ELSE individual.phonenumber 
        END AS surrender_phonenumber,
        adoptiondetails.adoption_date, GROUP_CONCAT(dogbreed.breedname ORDER BY dogbreed.breedname SEPARATOR '/') AS breeds, 
        CASE  
            WHEN localanimalcontroldepartment.surrenderID IS NOT NULL THEN 'Yes'  
            ELSE 'No'   
        END AS Animal_control_surrender_indicator 
        from dog 
        LEFT JOIN microchip ON dog.dogID = microchip.dogID
        LEFT JOIN dogbreed ON dog.dogID = dogbreed.dogID
        LEFT JOIN localanimalcontroldepartment ON dog.surrenderID = localanimalcontroldepartment.surrenderID
        LEFT JOIN individual ON dog.surrenderID = individual.surrenderID
        LEFT JOIN adoptiondetails ON dog.dogID = adoptiondetails.dogID
        WHERE dog.dogID = ?
        GROUP BY dog.dogID, dog.name, dog.sex, dog.adoption_state, dog.alteration_status, current_age_in_months, dog.description, microchipID, dog.surrender_date, surrender_phonenumber, adoptiondetails.adoption_date, Animal_control_surrender_indicator   
        """;
        return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            DogDetailsVO dog = new DogDetailsVO();
            dog.setDogID(rs.getInt("dogID"));
            dog.setName(rs.getString("name"));
            dog.setBreed(rs.getString("breeds"));
            dog.setSex(Sex.valueOf(rs.getString("sex")));
            dog.setSurrenderDate(rs.getDate("surrender_date").toLocalDate());
            if (rs.getString("adoption_date") != null)
            {
                dog.setAdoptionDate(rs.getDate("adoption_date").toLocalDate());
            }
            dog.setSurrenderPhonenumber(rs.getString("surrender_phonenumber"));
            dog.setCurrentAgeInMonth(rs.getInt("current_age_in_months"));
            dog.setAlterationStatus(rs.getBoolean("alteration_status"));
            dog.setDescription(rs.getString("description"));
            dog.setAnimalControlSurrenderIndicator(rs.getString("Animal_control_surrender_indicator"));
            dog.setAdoptionState(rs.getBoolean("adoption_state"));
            dog.setMicrochipID(rs.getString("microchipID"));
            return dog;
        }, dogID);
    }

    /* This to to update dog's alteration status to alterated */ 
    public int updateAlterationStatus(Integer dogID)
    {
        String sql = """
        UPDATE dog
        SET alteration_status = 1
        WHERE dogID = ?;
        """;
        return jdbcTemplate.update(sql, dogID);
    }
    /* This to to get all dog's breeds except mixed and unknown */ 
    public List<BreedPO> getDogBreeds(String searchPattern)
    {
        String sql = """
            SELECT breedname
            FROM breed
            WHERE LOWER(breedname) NOT IN ('mixed', 'unknown') AND LOWER(breedname) LIKE ?;
        """;
        return jdbcTemplate.query(sql, (rs, rowNum) -> new BreedPO(
            rs.getString("breedname")
        ), 
        "%" + searchPattern + "%"
        );
    }
    public int updateDogBreeds(List<String> breeds, Integer dogID)
    {
        int rows = 0;
        String sql = """
            INSERT INTO dogbreed(dogID, breedname)
            VALUES(?, ?)
        """;
        for (String breed : breeds)
        {
            rows += jdbcTemplate.update(sql, dogID, breed);
        }
        String sqlToDeleteOutdatedBreed = """
            DELETE FROM dogbreed 
            WHERE dogID = ? AND LOWER(breedname) IN ('mixed', 'unknown')
        """;
        rows += jdbcTemplate.update(sqlToDeleteOutdatedBreed, dogID);
        return rows;
    }

    public int addDogBreeds(List<String> breeds, Integer dogID)
    {
        int rows = 0;
        String sql = """
            INSERT INTO dogbreed(dogID, breedname)
            VALUES(?, ?)
        """;
        for (String breed : breeds)
        {
            rows += jdbcTemplate.update(sql, dogID, breed);
        }
        return rows;
    }
    public List<Integer> getSpecialDogIDs()
    {
        String sql = """
        SELECT DISTINCT(dog.dogID)
        FROM dog
        JOIN dogbreed ON dog.dogID = dogbreed.dogID
        WHERE LOWER(dog.name) = LOWER(?)
        AND LOWER(dogbreed.breedname) LIKE LOWER(?);        
        """;
        String specialName = "Sideways";
        String specialBreed = "%Terrier%";
        return jdbcTemplate.query(sql, (rs, rowNum) -> rs.getInt("dogID"), specialName, specialBreed);
    }
    public int updateSex(Integer dogID, Integer sexBit)
    {
        String sex = sexBit == 0 ? Sex.Female.name() : Sex.Male.name();
        String sql = """
        UPDATE dog
        SET sex = ?
        WHERE dogID = ?;       
        """;
        return jdbcTemplate.update(sql, sex, dogID);
    }
}
