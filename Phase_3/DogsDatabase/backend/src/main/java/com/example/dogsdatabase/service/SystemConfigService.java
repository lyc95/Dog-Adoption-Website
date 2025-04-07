package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.SystemConfigDao;
import org.springframework.stereotype.Service;

/**
 * @Title: SystemConfigService
 * @Author ttu
 * @Package com.example.dogsdatabase.service
 * @Date 2025/4/7 21:13
 * @description:
 */
@Service
public class SystemConfigService {
    private final SystemConfigDao systemConfigDao;

    public SystemConfigService(SystemConfigDao systemConfigDao) {
        this.systemConfigDao = systemConfigDao;
    }

    public int updateSystemConfig(String configName, String configValue) {
        return systemConfigDao.updateSystemConfig(configName, configValue);
    }

    public String getSystemConfigByName(String configName) {
        return systemConfigDao.getSystemConfigByName(configName).getConfig_value();
    }


}
