package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.AdoptionApplicationPO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.time.LocalDate;

/**
 * @Title: AdoptionApplicationDao
 * @Description: AdoptionApplication数据访问层
 */
@Repository
public class AdoptionApplicationDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 插入收养申请
     * @param application 收养申请信息
     * @return 影响的行数
     */
    public int insertAdoptionApplication(AdoptionApplicationPO application) {
        String sql = "INSERT INTO adoptionapplication (email, application_date) VALUES (?, ?)";
        return jdbcTemplate.update(sql, application.getEmail(), application.getApplication_date());
    }

    /**
     * 更新收养申请状态
     * @param application 收养申请信息
     * @return 影响的行数
     */
    public int updateAdoptionApplicationState(AdoptionApplicationPO application) {
        String sql = "UPDATE adoptionapplication SET application_state = ? WHERE email = ? AND application_date = ?";
        return jdbcTemplate.update(sql, application.getEmail(), application.getApplication_date());
    }

    /**
     * 删除收养申请
     * @param email 收养者邮箱
     * @param applicationDate 申请日期
     * @return 影响的行数
     */
    public int deleteAdoptionApplication(String email, LocalDate applicationDate) {
        String sql = "DELETE FROM adoptionapplication WHERE email = ? AND application_date = ?";
        return jdbcTemplate.update(sql, email, applicationDate);
    }

    /**
     * 获取所有收养申请
     * @return 收养申请列表
     */
    public List<AdoptionApplicationPO> getAllAdoptionApplications() {
        String sql = "SELECT * FROM adoptionapplication";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            AdoptionApplicationPO application = new AdoptionApplicationPO();
            application.setEmail(rs.getString("email"));
            application.setApplication_date(rs.getDate("application_date").toLocalDate());
            return application;
        });
    }

    /**
     * 根据邮箱获取所有收养申请
     * @param email 收养者邮箱
     * @return 收养申请列表
     */
    public List<AdoptionApplicationPO> getAdoptionApplicationsByEmail(String email) {
        String sql = "SELECT * FROM adoptionapplication WHERE email = ?";
        return jdbcTemplate.query(sql, new Object[]{email}, (rs, rowNum) -> {
            AdoptionApplicationPO application = new AdoptionApplicationPO();
            application.setEmail(rs.getString("email"));
            application.setApplication_date(rs.getDate("application_date").toLocalDate());
            return application;
        });
    }
}