package com.example.dogsdatabase.service;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.dogsdatabase.dao.MicrochipDAO;
import com.example.dogsdatabase.entity.po.MicrochipPO;
import com.example.dogsdatabase.entity.po.MicrochipVendorPO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MicrochipService {

    /* Repository for  MicroChip */
    private final MicrochipDAO microchipDAO;

    public void checkVendorExisted(String vendorName) throws Exception
    {
        if (microchipDAO.findMicrochipVendor(vendorName).isEmpty())
        {
            throw new Exception("Error: Microchip Vendor name is not existed");
        }

    }
    public Integer addMicrochip(MicrochipPO microchipPO) throws Exception
    {
        if (checkMicrochipForDog(microchipPO.getDogID()))
        {
            throw new Exception("Error: The dog had resgistered Microchip already with dogId = " + microchipPO.getDogID());
        }
        checkVendorExisted(microchipPO.getManufactureName());
        return microchipDAO.addMicrochip(microchipPO);
    }
    public Boolean checkMicrochipForDog(Integer dogId)
    {
        /* Return True if dog had Microchip registered otherwise return false*/
        return !microchipDAO.getMicrochipForDog(dogId).isEmpty();
    }
    public Integer updateMicrochip(MicrochipPO microchipPO) throws Exception
    {
        checkVendorExisted(microchipPO.getManufactureName());
        return microchipDAO.updateMicrochip(microchipPO);
    }
    public List<MicrochipPO> getMicrochip(String microchipID) throws Exception
    {
        if (microchipID == null)
        {
            throw new Exception("Error: microchipID can not bu null");
        }
        return microchipDAO.getMicrochip(microchipID);
    }
    public Integer deleteMicrochip(String microchipID) throws Exception
    {
        if (microchipID == null)
        {
            throw new Exception("Error: microchipID can not bu null");
        }
        return microchipDAO.deleteMicrochip(microchipID);
    }
    public List<MicrochipVendorPO> getMicrochipVendors()
    {
        return microchipDAO.getMicrochipVendors();
    }

    public List<MicrochipVendorPO> getMicrochipVendors(String pattern)
    {
        if (pattern == null || pattern.isEmpty())
        {
            return microchipDAO.getMicrochipVendors();
        }
        return microchipDAO.getMicrochipVendors(pattern);
    }

    public List<MicrochipPO> getMicrochipByDogID(Integer dogID) {
        return microchipDAO.getMicrochipForDog(dogID);
    }
}
