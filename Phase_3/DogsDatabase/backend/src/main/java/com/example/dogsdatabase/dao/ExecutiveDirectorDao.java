package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.ExecutiveDirectorPO;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Title: ExecutiveDirectorDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/4/1 22:00
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class ExecutiveDirectorDao {
    private final JdbcTemplate jdbcTemplate;

    public int insertExecutiveDirector(ExecutiveDirectorPO executiveDirectorPO) {
        String sql = "INSERT INTO executive_director (email) VALUES (?)";
        return jdbcTemplate.update(sql, executiveDirectorPO.getEmail());
    }

    public int updateExecutiveDirector(String old_email, String new_email) {
        String sql = "UPDATE executive_director SET email = ? WHERE email = ?";
        return jdbcTemplate.update(sql, new_email, old_email);
    }

    public int deleteExecutiveDirector(String email) {
        String sql = "DELETE FROM executive_director WHERE email = ?";
        return jdbcTemplate.update(sql, email);
    }

    public ExecutiveDirectorPO getExecutiveDirectorByEmail(String email) {
        String sql = "SELECT * FROM executive_director WHERE email = ?";
        return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            ExecutiveDirectorPO executiveDirectorPO = new ExecutiveDirectorPO();
            executiveDirectorPO.setEmail(rs.getString("email"));
            return executiveDirectorPO;
        }, email);
    }

    public int getExecutiveDirectorCount() {
        String sql = "SELECT COUNT(*) FROM executive_director";
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    public List<ExecutiveDirectorPO> getAllExecutiveDirectors() {
        String sql = "SELECT * FROM executive_director";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            ExecutiveDirectorPO executiveDirectorPO = new ExecutiveDirectorPO();
            executiveDirectorPO.setEmail(rs.getString("email"));
            return executiveDirectorPO;
        });
    }
}
