package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.service.SystemConfigService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * @Title: SystemConfigController
 * @Author ttu
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/4/7 21:12
 * @description:
 */
@RestController
@RequestMapping("/api/systemConfig")
@RequiredArgsConstructor
public class SystemConfigController {
    private final SystemConfigService systemConfigService;
    @GetMapping("/get")
    public String getSystemConfigByName(@RequestParam String configName) {
        return systemConfigService.getSystemConfigByName(configName);
    }

    @PutMapping("/update")
    public int updateSystemConfig(String configName, String configValue) {
        return systemConfigService.updateSystemConfig(configName, configValue);
    }




}
