package com.example.dogsdatabase.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dogsdatabase.dao.AdopterDao;
import com.example.dogsdatabase.dao.AdoptionApplicationDao;
import com.example.dogsdatabase.entity.po.AdopterPO;
import com.example.dogsdatabase.entity.po.AdoptionApplicationPO;
import com.example.dogsdatabase.entity.vo.AdoptionApplicationDisplayVO;
import com.example.dogsdatabase.entity.vo.AdoptionApplicationVO;

/**
 * @Title: AdoptionApplicationService
 * @Description: AdoptionApplication服务层
 */
@Service
public class AdoptionApplicationService {

    @Autowired
    private AdoptionApplicationDao adoptionApplicationDao;

    @Autowired AdopterDao adopterDao;

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

    public int checkAdoptionApplication(String email, LocalDate applicationDate)
    {
        return adoptionApplicationDao.checkAdoptionApplication(email, applicationDate);
    }
    public int createNewAdoptionApplication(AdoptionApplicationVO adoptionApplicationVO)
    {
        String email = adoptionApplicationVO.getEmail();
        /* Check if this adopter is new  */
        if (adopterDao.getAdopterByEmail(email) == null)
        {
            /* The adopter is new and need to create adopter first*/
            AdopterPO newAdopter = new AdopterPO(
                adoptionApplicationVO.getEmail(),
                adoptionApplicationVO.getPhone_number(),
                adoptionApplicationVO.getHousehold_size(),
                adoptionApplicationVO.getFirstname(),
                adoptionApplicationVO.getLastname(),
                adoptionApplicationVO.getStreet(),
                adoptionApplicationVO.getCity(),
                adoptionApplicationVO.getState(),
                adoptionApplicationVO.getZipcode()
            );
            adopterDao.insertAdopter(newAdopter);
        }
        AdoptionApplicationPO newApplication = new AdoptionApplicationPO(email, adoptionApplicationVO.getDate());
        return adoptionApplicationDao.insertAdoptionApplication(newApplication);
    }
    public List<AdoptionApplicationDisplayVO> getAllPendingAdoptionApplication()
    {
        return adoptionApplicationDao.getAllPendingAdoptionApplication();
    }
    public List<AdoptionApplicationDisplayVO> getAllApprovedAdoptionApplication()
    {
        return adoptionApplicationDao.getAllApprovedAdoptionApplication();
    }
    public List<AdoptionApplicationDisplayVO> getAllRejectedAdoptionApplication()
    {
        return adoptionApplicationDao.getAllRejectedAdoptionApplication();
    }
    public int approveApplication(AdoptionApplicationPO adoptionApplicationPO)
    {
        return adoptionApplicationDao.approveApplication(adoptionApplicationPO);
    }
    public int rejectApplication(AdoptionApplicationPO adoptionApplicationPO)
    {
        return adoptionApplicationDao.rejectApplication(adoptionApplicationPO);
    }
}