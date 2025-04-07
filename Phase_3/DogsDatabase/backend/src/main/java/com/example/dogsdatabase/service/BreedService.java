package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.BreedDao;
import com.example.dogsdatabase.entity.po.BreedPO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Title: BreedService
 * @Description: Breed服务层
 */
@Service
public class BreedService {

    @Autowired
    private BreedDao breedDao;

    public int insertBreed(BreedPO breed) {
        return breedDao.insertBreed(breed);
    }

    public int updateBreed(BreedPO breed) {
        return breedDao.updateBreed(breed);
    }

    public int deleteBreed(String breedname) {
        return breedDao.deleteBreed(breedname);
    }

    public BreedPO getBreedByBreedname(String breedname) {
        return breedDao.getBreedByBreedname(breedname);
    }

    public List<BreedPO> getAllBreeds() {
        return breedDao.getAllBreeds();
    }
}