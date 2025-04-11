package com.example.dogsdatabase.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.dto.BreedUpdateDTO;
import com.example.dogsdatabase.entity.dto.DogDTO;
import com.example.dogsdatabase.entity.po.BreedPO;
import com.example.dogsdatabase.entity.vo.DogDetailsVO;
import com.example.dogsdatabase.entity.vo.DogVO;
import com.example.dogsdatabase.service.DogService;

import lombok.RequiredArgsConstructor;

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
    public Result insertDog(@RequestBody DogVO dogVO) {

        return Result.success(dogService.insertDog(dogVO));
    }

    @PostMapping("/addwithdetails")
    public Result addDogWithDetails(@RequestBody DogDTO dogDTO) 
    {
        try {
            int dogID = dogService.addDogWithDetails(dogDTO);
            return Result.success(dogID);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @PutMapping("/update")
    public int updateDog(@RequestBody DogVO dogVO) {
        return dogService.updateDog(dogVO);
    }

    @DeleteMapping("/{id}")
    public int deleteDog(@PathVariable Integer id){
        return dogService.deleteDog(id);
    }

    @GetMapping("/details/{dogID}")
    public Result getDogDetailsByDogID(@PathVariable("dogID") Integer dogID) {
        try {
            DogDetailsVO dogDetailsVO = dogService.getDogDetailsByDogID(dogID);
            return Result.success(dogDetailsVO);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @PutMapping("/update/alterationstatus/{dogID}")
    public Result updateAlterationStatus(@PathVariable("dogID") Integer dogID)
    {
        try 
        {
            int rows = dogService.updateAlterationStatus(dogID);
            return Result.success(rows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @GetMapping({"/breeds", "/breeds/{pattern}"})
    public Result getDogBreeds(@PathVariable(required = false) Optional<String> pattern)
    {
        try 
        {   String searchPattern = pattern.orElse("");
            List<BreedPO> breeds = dogService.getDogBreeds(searchPattern);
            return Result.success(breeds);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @PutMapping("/update/breeds")
    public Result updateDogBreeds(@RequestBody BreedUpdateDTO breedUpdateDTO)
    {
        try 
        {   
            int rows = dogService.updateDogBreeds(breedUpdateDTO.getUpdatedBreeds(), breedUpdateDTO.getDogID());
            return Result.success(rows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

}
