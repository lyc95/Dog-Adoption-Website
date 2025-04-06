package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.AdoptionApplicationDao;
import com.example.dogsdatabase.entity.po.AdoptionApplicationPO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Title: AdoptionApplicationService
 * @Description: AdoptionApplication服务层
 */
@Service
public class AdoptionApplicationService {

    @Autowired
    private AdoptionApplicationDao adoptionApplicationDao;

    public int insertAdoptionApplication(AdoptionApplicationPO application) {
        return adoptionApplicationDao.insertAdoptionApplication(application);
    }

    public int updateAdoptionApplication(AdoptionApplicationPO application) {
        return adoptionApplicationDao.updateAdoptionApplicationState(application);
    }

    public int deleteAdoptionApplication(String email, java.time.LocalDate applicationDate) {
        return adoptionApplicationDao.deleteAdoptionApplication(email, applicationDate);
    }

    public List<AdoptionApplicationPO> getAllAdoptionApplications() {
        return adoptionApplicationDao.getAllAdoptionApplications();
    }

    public List<AdoptionApplicationPO> getAdoptionApplicationsByEmail(String email) {
        return adoptionApplicationDao.getAdoptionApplicationsByEmail(email);
    }
}