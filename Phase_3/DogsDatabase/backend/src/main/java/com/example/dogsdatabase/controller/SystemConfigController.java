package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.dto.SystemConfigDTO;
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
    public Result getSystemConfigByName(@RequestParam String configName) {
        return Result.success(systemConfigService.getSystemConfigByName(configName));
    }

    @PutMapping("/update")
    public Result updateSystemConfig(@RequestBody SystemConfigDTO systemConfigDTO) {
        return Result.success(systemConfigService.updateSystemConfig(systemConfigDTO.getConfigName(), systemConfigDTO.getConfig_value()));
    }




}
