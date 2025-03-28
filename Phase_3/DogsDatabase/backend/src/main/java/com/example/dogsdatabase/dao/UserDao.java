package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.User;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
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

    public User getUserByEmail(String email){
        String sql = "SELECT * FROM user WHERE email = ?";
        try {
            return jdbcTemplate.queryForObject(sql, User.class, email);
        } catch (Exception e) {
            return null;
        }

    }

    public List<User> getAllUsers(){
        String sql = "SELECT * FROM user";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            User user = new User();
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
            return user;
        });
    }


}
