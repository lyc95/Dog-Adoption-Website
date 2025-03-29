package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.DogPO;
import com.example.dogsdatabase.entity.po.Sex;
import com.example.dogsdatabase.entity.vo.DogVO;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    public int insertDog(DogVO dog) {
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

        return jdbcTemplate.update(sql,  params.toArray());   // 传递参数数组
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
            params.add(dog.getSex());
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
        String sql = "SELECT * FROM dog";
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
}
