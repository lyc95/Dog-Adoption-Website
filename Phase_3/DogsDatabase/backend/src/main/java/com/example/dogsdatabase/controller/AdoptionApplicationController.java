package com.example.dogsdatabase.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.po.AdoptionApplicationPO;
import com.example.dogsdatabase.entity.vo.AdoptionApplicationDisplayVO;
import com.example.dogsdatabase.entity.vo.AdoptionApplicationVO;
import com.example.dogsdatabase.service.AdoptionApplicationService;


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
    @GetMapping("/check/{email}/{applicationDate}")
    public Result checkAdoptionApplication(@PathVariable String email, @PathVariable LocalDate applicationDate) {
        int result = adoptionApplicationService.checkAdoptionApplication(email, applicationDate);
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
    
    @PostMapping("/add")
    public Result createNewAdoptionApplication(@RequestBody AdoptionApplicationVO adoptionApplicationVO) {
        try
        {
            int affectedRows = adoptionApplicationService.createNewAdoptionApplication(adoptionApplicationVO);
            return Result.success(affectedRows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @GetMapping("/get/approved")
    public Result getAllApprovedAdoptionApplication() {
        try
        {
            List<AdoptionApplicationDisplayVO> resultlist = adoptionApplicationService.getAllApprovedAdoptionApplication();
            return Result.success(resultlist);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @GetMapping("/get/pending")
    public Result getAllPendingAdoptionApplication() {
        try
        {
            List<AdoptionApplicationDisplayVO> resultlist = adoptionApplicationService.getAllPendingAdoptionApplication();
            return Result.success(resultlist);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @GetMapping("/get/rejected")
    public Result getAllRejectedAdoptionApplication() {
        try
        {
            List<AdoptionApplicationDisplayVO> resultlist = adoptionApplicationService.getAllRejectedAdoptionApplication();
            return Result.success(resultlist);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @PutMapping("/approve")
    public Result approveApplication(@RequestBody AdoptionApplicationPO adoptionApplicationPO) {
        try
        {
            int rowsUpdated = adoptionApplicationService.approveApplication(adoptionApplicationPO);
            return Result.success(rowsUpdated);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @PutMapping("/reject")
    public Result rejectApplication(@RequestBody AdoptionApplicationPO adoptionApplicationPO) {
        try
        {
            int rowsUpdated = adoptionApplicationService.rejectApplication(adoptionApplicationPO);
            return Result.success(rowsUpdated);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
}