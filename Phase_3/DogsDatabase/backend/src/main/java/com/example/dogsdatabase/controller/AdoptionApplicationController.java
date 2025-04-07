package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.po.AdoptionApplicationPO;
import com.example.dogsdatabase.service.AdoptionApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

/**
 * @Title: AdoptionApplicationController
 * @Description: AdoptionApplication控制器
 */
@RestController
@RequestMapping("/api/adoption-application")
public class AdoptionApplicationController {

    @Autowired
    private AdoptionApplicationService adoptionApplicationService;

    @PostMapping("/insert")
    public Result insertAdoptionApplication(@RequestBody AdoptionApplicationPO application) {
        int result = adoptionApplicationService.insertAdoptionApplication(application);
        return Result.success(result);
    }

    @PutMapping("/update")
    public Result updateAdoptionApplication(@RequestBody AdoptionApplicationPO application) {
        int result = adoptionApplicationService.updateAdoptionApplication(application);
        return Result.success(result);
    }

    @DeleteMapping("/{email}/{applicationDate}")
    public Result deleteAdoptionApplication(@PathVariable String email, @PathVariable LocalDate applicationDate) {
        int result = adoptionApplicationService.deleteAdoptionApplication(email, applicationDate);
        return Result.success(result);
    }

    @GetMapping("/all")
    public Result getAllAdoptionApplications() {
        List<AdoptionApplicationPO> applications = adoptionApplicationService.getAllAdoptionApplications();
        return Result.success(applications);
    }

    @GetMapping("/adopter/{email}")
    public Result getAdoptionApplicationsByEmail(@PathVariable String email) {
        List<AdoptionApplicationPO> applications = adoptionApplicationService.getAdoptionApplicationsByEmail(email);
        return Result.success(applications);
    }
}