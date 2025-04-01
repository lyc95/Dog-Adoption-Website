package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.AdminUserPO;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Title: AdminUserDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/4/1 20:38
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class AdminUserDao {
    private final JdbcTemplate jdbcTemplate;

    public int insertAdminUser(String email) {
        String sql = "INSERT INTO adminuser (email) VALUES (?)";
        return jdbcTemplate.update(sql, email);
    }

    public int updateAdminUser(String old_email, String new_email) {
        String sql = "UPDATE adminuser SET email = ? WHERE email = ?";
        return jdbcTemplate.update(sql, new_email, old_email);
    }

    public int deleteAdminUser(String email) {
        String sql = "DELETE FROM adminuser WHERE email = ?";
        return jdbcTemplate.update(sql, email);
    }

    public AdminUserPO getAdminUserByEmail(String email) {
        String sql = "SELECT * FROM adminuser WHERE email = ?";
        return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            AdminUserPO adminUserPO = new AdminUserPO();
            adminUserPO.setEmail(rs.getString("email"));
            return adminUserPO;
        }, email);
    }

    public List<AdminUserPO> getAllAdminUsers() {
        String sql = "SELECT * FROM adminuser";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            AdminUserPO adminUserPO = new AdminUserPO();
            adminUserPO.setEmail(rs.getString("email"));
            return adminUserPO;
        });
    }




}
