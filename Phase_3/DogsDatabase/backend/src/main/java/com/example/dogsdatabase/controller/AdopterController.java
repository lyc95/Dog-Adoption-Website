package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.po.AdopterPO;
import com.example.dogsdatabase.service.AdopterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Title: AdopterController
 * @Description: Adopter控制器
 */
@RestController
@RequestMapping("/api/adopter")
public class AdopterController {

    @Autowired
    private AdopterService adopterService;

    @PostMapping("/insert")
    public Result insertAdopter(@RequestBody AdopterPO adopter) {
        int result = adopterService.insertAdopter(adopter);
        return Result.success(result);
    }

    @PutMapping("/update")
    public Result updateAdopter(@RequestBody AdopterPO adopter) {
        int result = adopterService.updateAdopter(adopter);
        return Result.success(result);
    }

    @DeleteMapping("/{email}")
    public Result deleteAdopter(@PathVariable String email) {
        int result = adopterService.deleteAdopter(email);
        return Result.success(result);
    }

    @GetMapping("/{email}")
    public Result getAdopterByEmail(@PathVariable String email) {
        AdopterPO adopter = adopterService.getAdopterByEmail(email);
        return Result.success(adopter);
    }

    @GetMapping("/all")
    public Result getAllAdopters() {
        List<AdopterPO> adopters = adopterService.getAllAdopters();
        return Result.success(adopters);
    }
}