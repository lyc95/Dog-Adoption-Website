package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.DogDao;
import com.example.dogsdatabase.entity.po.DogBreedPO;
import com.example.dogsdatabase.entity.po.DogPO;
import com.example.dogsdatabase.entity.vo.DogVO;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.jdbc.core.JdbcTemplate;
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
    private final JdbcTemplate jdbcTemplate;

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
        dogVO.setBreed(getDogBreedName(dogPO.getDogID()));
        return dogVO;
    }

    public List<DogVO> getAllDogs() {
        List<DogVO> dogVOS = new ArrayList<>();
        for (DogPO dogPO : dogDao.getAllDogs()) {
            DogVO dogVO = new DogVO();
            BeanUtils.copyProperties(dogPO, dogVO);
            dogVO.setBreed(getDogBreedName(dogPO.getDogID()));
            dogVOS.add(dogVO);
        }
        return dogVOS;
    }

    private String getDogBreedName(Integer dogID) {
        // 1. 参数校验
        if (dogID == null) {
            return "";
        }

        String sql = "SELECT `breedname` FROM `dogbreed` WHERE `dogID` = ?";

        List<String> dogBreeds = jdbcTemplate.query(
                sql,
                new Object[]{dogID},  // 参数数组
                (rs, rowNum) -> rs.getString("breedname")   // 直接提取字段值
        );

        // 4. 使用StringJoiner优化字符串拼接（JDK8+）
        return dogBreeds.isEmpty()  ? "" : String.join(",",  dogBreeds);
    }



}
