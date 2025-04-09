package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.service.ApprovedApplicationService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Title: ApprovedApplicationController
 * @Author ttu
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/4/8 22:49
 * @description:
 */
@RestController
@RequestMapping("/api/approvedApplication")
@RequiredArgsConstructor
public class ApprovedApplicationController {
    private final ApprovedApplicationService approvedApplicationService;

    @GetMapping("/findLatestByEmail/{email}")
    public Result findLatestApprovedApplicationByEmail(@PathVariable String email){
        return Result.success(approvedApplicationService.findLatestApprovedApplicationByEmail(email));
    }

    @GetMapping("/getApprovedApplication")
    public Result getApprovedApplication(){
        return Result.success(approvedApplicationService.getApprovedApplication());
    }

}
