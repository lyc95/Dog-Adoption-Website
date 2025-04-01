package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.VolunteerPO;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Title: VolunteerDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/4/1 21:46
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class VolunteerDao {
    private final JdbcTemplate jdbcTemplate;

    public int insertVolunteer(VolunteerPO volunteerPO){
        return jdbcTemplate.update("INSERT INTO volunteer (email, age) VALUES (?, ?)",
                volunteerPO.getEmail(), volunteerPO.getAge());
    }

    public int updateVolunteer(VolunteerPO volunteerPO){
        return jdbcTemplate.update("UPDATE volunteer SET age = ? WHERE email = ?",
                volunteerPO.getAge(), volunteerPO.getEmail());
    }

    public int deleteVolunteer(String email){
        return jdbcTemplate.update("DELETE FROM volunteer WHERE email = ?", email);
    }

    public VolunteerPO getVolunteerByEmail(String email){
        String sql = "SELECT * FROM volunteer WHERE email = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{email}, (rs, rowNum) -> {
            VolunteerPO volunteerPO = new VolunteerPO();
            volunteerPO.setEmail(rs.getString("email"));
            volunteerPO.setAge(rs.getInt("age"));
            return volunteerPO;
        });

    }

    public int getVolunteerCount(){
        String sql = "SELECT COUNT(*) FROM volunteer";
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    public List<VolunteerPO> getAllVolunteers(){
        String sql = "SELECT * FROM volunteer";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            VolunteerPO volunteerPO = new VolunteerPO();
            volunteerPO.setEmail(rs.getString("email"));
            volunteerPO.setAge(rs.getInt("age"));
            return volunteerPO;
        });
    }

}
