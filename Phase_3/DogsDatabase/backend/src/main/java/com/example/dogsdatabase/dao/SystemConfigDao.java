package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.dto.SystemConfigDTO;
import com.example.dogsdatabase.entity.po.SystemConfigPO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * @Title: SystemConfigDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/3/28 18:58
 * @description:
 */
@Repository
public class SystemConfigDao {
    private final JdbcTemplate jdbcTemplate;

    public SystemConfigDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    public int updateSystemConfig(String configName, String configValue) {
        String sql = "UPDATE systemconfig SET config_value = ? WHERE configName = ?";
        return jdbcTemplate.update(sql, configValue, configName);
    }

    public SystemConfigPO getSystemConfigByName(String configName) {
        String sql = "SELECT * FROM systemconfig WHERE configName = ?";

        SystemConfigPO systemConfigPO1 = jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            SystemConfigPO systemConfigPO = new SystemConfigPO();
            systemConfigPO.setConfigName(rs.getString("configName"));
            systemConfigPO.setConfig_value(rs.getString("config_value"));
            return systemConfigPO;
        }, configName);
        return systemConfigPO1;
    }



}
