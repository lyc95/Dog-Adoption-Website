package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.UserPO;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Title: UserRepsitory
 * @Author ttu
 * @Package com.example.dogsdatabase.repository
 * @Date 2025/3/28 17:04
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class UserDao {
    private final JdbcTemplate jdbcTemplate;

    public int insertUser(String email, String password) {
        String sql = "INSERT INTO user (email, password) VALUES (?, ?)";
        return jdbcTemplate.update(sql, email, password);
    }

    public int updateUser(String email, String password) {
        String sql = "UPDATE user SET password = ? WHERE email = ?";
        return jdbcTemplate.update(sql, password, email);
    }

    public int deleteUser(String email) {
        String sql = "DELETE FROM user WHERE email = ?";
        return jdbcTemplate.update(sql, email);
    }

    public UserPO getUserByEmail(String email){
        String sql = "SELECT email, password FROM user WHERE email = ?";
        try {
            return jdbcTemplate.queryForObject(sql,  new Object[]{email}, (rs, rowNum) ->
                    new UserPO(rs.getString("email"), rs.getString("password"))
            );
        } catch (Exception e) {
            return null;
        }

    }

    public String getUserType(String email) {
        String sql = "SELECT 'AdminUser' AS type FROM AdminUser WHERE email = ? " +
                "UNION ALL SELECT 'Volunteer' FROM Volunteer WHERE email = ? " +
                "UNION ALL SELECT 'ExecutiveDirector' FROM ExecutiveDirector WHERE email = ? " +
                "LIMIT 1";
        return jdbcTemplate.queryForObject(sql,  new Object[]{email, email, email}, String.class);
    }

}
