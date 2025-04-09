package com.example.dogsdatabase.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.*;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.po.MicrochipPO;
import com.example.dogsdatabase.entity.po.MicrochipVendorPO;
import com.example.dogsdatabase.service.MicrochipService;

/**
 * @Title: MicrochipController
 * @Author Youc
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/3/31
 * @description:
 */

@RestController
@RequestMapping("/api/microchip")
public class MicrochipController {
    private final MicrochipService microchipService;

    public MicrochipController(MicrochipService microchipService) {
        this.microchipService = microchipService;
    }

    @PostMapping("/add")
    public Result addMicrochip(@RequestBody MicrochipPO microchipPO)
    {
        try {
            Integer addedRows = microchipService.addMicrochip(microchipPO);
            return Result.success(addedRows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @DeleteMapping("/delete/{microchipID}")
    public Result deleteMicrochip(@PathVariable String microchipID)
    {
        try {
            Integer deletedRows = microchipService.deleteMicrochip(microchipID);
            return Result.success(deletedRows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @PutMapping("/update")
    public Result updateMicrochip(@RequestBody MicrochipPO microchipPO)
    {
        try {
            Integer updatedRows = microchipService.updateMicrochip(microchipPO);
            return Result.success(updatedRows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @GetMapping("/get")
    public Result getMicrochipByDogID(@RequestParam Integer dogID)
    {
        try {
            List<MicrochipPO> microchipPOS = microchipService.getMicrochipByDogID(dogID);
            return Result.success(microchipPOS);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @GetMapping("/get/{microchipID}")
    public Result getMicrochip(@PathVariable String microchipID)
    {
        try {
            List<MicrochipPO> result = microchipService.getMicrochip(microchipID);
            return Result.success(result);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @GetMapping({"/vendor", "/vendor/{pattern}"})
    public Result getMicrochipVendor(@PathVariable(required = false) Optional<String> pattern)
    {
        try {
            String searchPattern = pattern.orElse("");
            List<MicrochipVendorPO> result = microchipService.getMicrochipVendors(searchPattern);
            return Result.success(result);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
}
