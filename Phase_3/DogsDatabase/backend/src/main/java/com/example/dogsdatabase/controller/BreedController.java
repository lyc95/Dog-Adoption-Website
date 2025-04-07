package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.po.BreedPO;
import com.example.dogsdatabase.service.BreedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Title: BreedController
 * @Description: Breed控制器
 */
@RestController
@RequestMapping("/api/breed")
public class BreedController {

    @Autowired
    private BreedService breedService;

    @PostMapping("/insert")
    public Result insertBreed(@RequestBody BreedPO breed) {
        int result = breedService.insertBreed(breed);
        return Result.success(result);
    }

    @PutMapping("/update")
    public Result updateBreed(@RequestBody BreedPO breed) {
        int result = breedService.updateBreed(breed);
        return Result.success(result);
    }

    @DeleteMapping("/{breedname}")
    public Result deleteBreed(@PathVariable String breedname) {
        int result = breedService.deleteBreed(breedname);
        return Result.success(result);
    }

    @GetMapping("/{breedname}")
    public Result getBreedByBreedname(@PathVariable String breedname) {
        BreedPO breed = breedService.getBreedByBreedname(breedname);
        return Result.success(breed);
    }

    @GetMapping("/all")
    public Result getAllBreeds() {
        List<BreedPO> breeds = breedService.getAllBreeds();
        return Result.success(breeds);
    }
}