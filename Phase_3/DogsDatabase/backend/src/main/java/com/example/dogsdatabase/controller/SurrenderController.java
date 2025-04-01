package com.example.dogsdatabase.controller;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.dto.SurrenderDTO;
import com.example.dogsdatabase.entity.vo.SurrenderVO;
import com.example.dogsdatabase.service.SurrenderService;

import lombok.RequiredArgsConstructor;

/**
 * @Title: SurrenderController
 * @Author Youc
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/3/31
 * @description:
 */
@RestController
@RequestMapping("/api/surrender")
@RequiredArgsConstructor
public class SurrenderController {
    private final SurrenderService surrenderService;

    @PostMapping("/add")
    public Result addSurrender(@RequestBody SurrenderDTO surrenderDTO)
    {
        try {
            SurrenderVO createdsurrender = surrenderService.addSurrender(surrenderDTO);
            return Result.success(createdsurrender);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @DeleteMapping("/delete/{surrenderID}")
    public Result deleteSurrender(@PathVariable Integer surrenderID)
    {
        try {
            Integer deletedRows = surrenderService.deleteSurrender(surrenderID);
            return Result.success(deletedRows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @PutMapping("/update/{surrenderID}")
    public Result updateSurrender(@PathVariable Integer surrenderID, @RequestBody SurrenderDTO surrenderDTO)
    {
        try {
            Integer updatedRows = surrenderService.updatePhoneNumber(surrenderID, surrenderDTO);
            return Result.success(updatedRows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @GetMapping("/get/{surrenderID}")
    public Result getSurrender(@PathVariable Integer surrenderID)
    {
        try {
            SurrenderVO surrenderVO= surrenderService.getSurrender(surrenderID);
            return Result.success(surrenderVO);
        } catch (Exception e) {
        }
        return Result.success();
    }
}
