package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.ApplicationState;
import com.example.dogsdatabase.entity.po.ApprovedApplicationPO;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Title: ApprovedApplicationDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/4/8 22:41
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class ApprovedApplicationDao {
    private final JdbcTemplate jdbcTemplate;

    public ApprovedApplicationPO findLatestApprovedApplicationByEmail(String email) {
        String sql = "SELECT * FROM approvedapplication WHERE email = ? AND application_state = 'APPROVED' ORDER BY application_date DESC LIMIT 1";
        List<ApprovedApplicationPO> results = jdbcTemplate.query(sql, new Object[]{email}, (rs, rowNum) -> {
            ApprovedApplicationPO approvedApplicationPO = new ApprovedApplicationPO();
            approvedApplicationPO.setEmail(rs.getString("email"));
            approvedApplicationPO.setApplication_date(rs.getDate("application_date").toLocalDate());
            approvedApplicationPO.setApplication_state(ApplicationState.valueOf(rs.getString("application_state")));
            approvedApplicationPO.setDate_approved(rs.getDate("date_approved").toLocalDate());
            return approvedApplicationPO;
        });
        return results.isEmpty() ? null : results.get(0);
    }

    public List<ApprovedApplicationPO> getApprovedApplication(){
        String sql = "SELECT * FROM approvedapplication WHERE application_state = 'APPROVED'";
        List<ApprovedApplicationPO> results = jdbcTemplate.query(sql, (rs, rowNum) -> {
            ApprovedApplicationPO approvedApplicationPO = new ApprovedApplicationPO();
            approvedApplicationPO.setEmail(rs.getString("email"));
            approvedApplicationPO.setApplication_date(rs.getDate("application_date").toLocalDate());
            approvedApplicationPO.setApplication_state(ApplicationState.valueOf(rs.getString("application_state")));
            approvedApplicationPO.setDate_approved(rs.getDate("date_approved").toLocalDate());
            return approvedApplicationPO;

        });
        return results;
    }


}
