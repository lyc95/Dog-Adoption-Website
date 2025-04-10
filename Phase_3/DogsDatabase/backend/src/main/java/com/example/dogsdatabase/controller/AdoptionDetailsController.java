package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.po.AdoptionDetailsPO;
import com.example.dogsdatabase.entity.vo.DogVO;
import com.example.dogsdatabase.service.AdoptionDetailsService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Title: AdoptionDetailsController
 * @Author ttu
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/4/10 22:31
 * @description:
 */
@RestController
@RequestMapping("/api/adoptionDetails")
@RequiredArgsConstructor
public class AdoptionDetailsController {
    private final AdoptionDetailsService adoptionDetailsService;

    @PostMapping
    public Result insertAdoptionDetails(@RequestBody AdoptionDetailsPO adoptionDetailsPO) {

        int res;
        try {
            res = adoptionDetailsService.insertAdoptionDetails(adoptionDetailsPO);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
        return Result.success(res);
    }
}
