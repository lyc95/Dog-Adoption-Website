package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.AdoptionDetailsDao;
import com.example.dogsdatabase.entity.po.AdoptionDetailsPO;
import com.example.dogsdatabase.entity.po.ApplicationState;
import com.example.dogsdatabase.entity.po.ApprovedApplicationPO;
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
    private final ApprovedApplicationService approvedApplicationService;

    public int insertAdoptionDetails(AdoptionDetailsPO adoptionDetailsPO) {

        //更新 已同意领养申请 的状态为ADOPTED
        ApprovedApplicationPO application = approvedApplicationService.getApprovedApplicationByEmail(adoptionDetailsPO.getEmail(), adoptionDetailsPO.getApplication_date());
        application.setApplication_state(ApplicationState.ADOPTED);
        approvedApplicationService.updateApprovedApplication(application);

        // 更新狗的状态为已领养
        DogVO dog = dogService.getDogByID(adoptionDetailsPO.getDogID());
        dog.setAdoption_state(true);
        dogService.updateDog(dog);

        // 插入
        return adoptionDetailsDao.insertAdoptionDetails(adoptionDetailsPO);
    }
}
