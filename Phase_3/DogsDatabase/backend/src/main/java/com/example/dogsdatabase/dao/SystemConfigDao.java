package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.dto.SystemConfigDTO;
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
        String sql = "INSERT INTO systemconfig (configName, config_value) VALUES (?, ?)";
        return jdbcTemplate.update(sql, configName, configValue);
    }

    public int updateSystemConfig(String configName, String configValue) {
        String sql = "UPDATE systemconfig SET config_value = ? WHERE configName = ?";
        return jdbcTemplate.update(sql, configValue, configName);
    }

    public int deleteSystemConfig(String configName) {
        String sql = "DELETE FROM systemconfig WHERE configName = ?";
        return jdbcTemplate.update(sql, configName);
    }

    public SystemConfigDTO getSystemConfigByName(String configName) {
        String sql = "SELECT * FROM systemconfig WHERE configName = ?";

        SystemConfigDTO systemConfigDTO1 = jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            SystemConfigDTO systemConfigDTO = new SystemConfigDTO();
            systemConfigDTO.setConfigName(rs.getString("configName"));
            systemConfigDTO.setConfig_value(rs.getString("config_value"));
            return systemConfigDTO;
        }, configName);
        return systemConfigDTO1;
    }



}
