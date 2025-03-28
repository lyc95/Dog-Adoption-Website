package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.SystemConfig;
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

    public int insertSystemConfig(String configName, String configValue) {
        String sql = "INSERT INTO system_config (config_name, config_value) VALUES (?, ?)";
        return jdbcTemplate.update(sql, configName, configValue);
    }

    public int updateSystemConfig(String configName, String configValue) {
        String sql = "UPDATE system_config SET config_value = ? WHERE config_name = ?";
        return jdbcTemplate.update(sql, configValue, configName);
    }

    public int deleteSystemConfig(String configName) {
        String sql = "DELETE FROM system_config WHERE config_name = ?";
        return jdbcTemplate.update(sql, configName);
    }

    public SystemConfig getSystemConfigByName(String configName) {
        String sql = "SELECT * FROM system_config WHERE config_name = ?";
        return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            SystemConfig systemConfig = new SystemConfig();
            systemConfig.setConfigName(rs.getString("config_name"));
            systemConfig.setConfig_value(rs.getString("config_value"));
            return systemConfig;
        }, configName);
    }



}
