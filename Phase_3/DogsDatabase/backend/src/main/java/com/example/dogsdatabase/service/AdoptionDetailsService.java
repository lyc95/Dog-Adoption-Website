package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.AdoptionDetailsDao;
import com.example.dogsdatabase.entity.po.AdoptionDetailsPO;
import com.example.dogsdatabase.entity.vo.DogVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * @Title: AdoptionDetailsService
 * @Author ttu
 * @Package com.example.dogsdatabase.service
 * @Date 2025/4/10 22:30
 * @description:
 */
@Service
@RequiredArgsConstructor
public class AdoptionDetailsService {
    private final AdoptionDetailsDao adoptionDetailsDao;
    private final DogService dogService;

    public int insertAdoptionDetails(AdoptionDetailsPO adoptionDetailsPO) {

        // 更新狗的状态为已领养
        int dogID = adoptionDetailsPO.getDogID();
        DogVO dog = dogService.getDogByID(dogID);
        dog.setAdoption_state(true);
        dogService.updateDog(dog);

        // 插入
        return adoptionDetailsDao.insertAdoptionDetails(adoptionDetailsPO);
    }
}
