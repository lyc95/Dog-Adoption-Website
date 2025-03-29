package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.vo.DogVO;
import com.example.dogsdatabase.service.DogService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Title: DogController
 * @Author ttu
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/3/29 21:56
 * @description:
 */
@RestController
@RequestMapping("/api/dog")
@RequiredArgsConstructor
public class DogController {
    private final DogService dogService;

    @GetMapping("/{id}")
    public Result getDogByID(@PathVariable("id") Integer id){
        DogVO dog;
        try {
            dog = dogService.getDogByID(id);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
        return Result.success(dog);
    }

    @GetMapping("/all")
    public Result getAllDogs() {
        List<DogVO> dogVOS = dogService.getAllDogs();
        return Result.success(dogVOS);
    }

    @PostMapping("/insert")
    public int insertDog(@RequestBody DogVO dogVO) {
        return dogService.insertDog(dogVO);
    }

    @PutMapping("/update")
    public int updateDog(@RequestBody DogVO dogVO) {
        return dogService.updateDog(dogVO);
    }

    @DeleteMapping("/{id}")
    public int deleteDog(@PathVariable Integer id){
        return dogService.deleteDog(id);
    }


}
