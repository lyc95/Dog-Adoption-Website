package com.example.dogsdatabase.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dogsdatabase.dao.AdopterDao;
import com.example.dogsdatabase.entity.po.AdopterPO;

/**
 * @Title: AdopterService
 * @Description: Adopter服务层
 */
@Service
public class AdopterService {

    @Autowired
    private AdopterDao adopterDao;

    public int insertAdopter(AdopterPO adopter) {
        return adopterDao.insertAdopter(adopter);
    }

    public int updateAdopter(AdopterPO adopter) {
        return adopterDao.updateAdopter(adopter);
    }

    public int deleteAdopter(String email) {
        return adopterDao.deleteAdopter(email);
    }

    public AdopterPO getAdopterByEmail(String email) {
        return adopterDao.getAdopterByEmail(email);
    }

    public List<AdopterPO> getAllAdopters() {
        return adopterDao.getAllAdopters();
    }

    public List<AdopterPO> getAdopterByLastname(String firstname) {
        return adopterDao.getAdopterByLastname(firstname);
    }
}