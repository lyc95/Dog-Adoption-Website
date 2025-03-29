package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.DogDao;
import com.example.dogsdatabase.entity.po.DogPO;
import com.example.dogsdatabase.entity.vo.DogVO;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Title: DogService
 * @Author ttu
 * @Package com.example.dogsdatabase.service
 * @Date 2025/3/29 21:39
 * @description:
 */
@Service
@RequiredArgsConstructor
public class DogService {
    private final DogDao dogDao;

    public int insertDog(DogVO dog) {
        return dogDao.insertDog(dog);
    }

    public int updateDog(DogVO dog) {
        return dogDao.updateDog(dog);
    }

    public int deleteDog(Integer dogID) {
        return dogDao.deleteDog(dogID);
    }

    public DogVO getDogByID(Integer dogID) {
        DogVO dogVO = new DogVO();
        DogPO dogPO = dogDao.getDogByID(dogID);
        if (dogPO == null) {
            throw new RuntimeException("Dog not found");
        }
        BeanUtils.copyProperties(dogPO, dogVO);
        return dogVO;
    }

    public List<DogVO> getAllDogs() {
        List<DogVO> dogVOS = new ArrayList<>();
        for (DogPO dogPO : dogDao.getAllDogs()) {
            DogVO dogVO = new DogVO();
            BeanUtils.copyProperties(dogPO, dogVO);
            dogVOS.add(dogVO);
        }
        return dogVOS;
    }



}
