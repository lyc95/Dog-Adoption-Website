package com.example.dogsdatabase.service;
import org.springframework.stereotype.Service;

import com.example.dogsdatabase.dao.SurrenderDAO;
import com.example.dogsdatabase.entity.dto.SurrenderDTO;
import com.example.dogsdatabase.entity.po.SurrenderType;
import com.example.dogsdatabase.entity.vo.SurrenderVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SurrenderService {
    private final SurrenderDAO surrenderDAO;

    public SurrenderVO addSurrender(SurrenderDTO surrenderDTO) throws Exception
    {

        if (surrenderDTO.getSurrenderType() != SurrenderType.LOCALANIMALCONTROLDEPARTMENT && surrenderDTO.getSurrenderType() != SurrenderType.INDIVIDUAL)
        {
            throw new Exception("ERROR: SurrenderType is Either LOCALANIMALCONTROLDEPARTMENT or INDIVIDUAL");
        }
        if (surrenderDTO.getSurrenderType() == SurrenderType.LOCALANIMALCONTROLDEPARTMENT && (surrenderDTO.getPhoneNumber() == null || surrenderDTO.getPhoneNumber().isEmpty()))
        {
            throw new Exception("ERROR: phoneNumber can not be empty for LOCALANIMALCONTROLDEPARTMENT");
        }
        Integer generatedKey = surrenderDAO.addSurrender();
        if (generatedKey == null)
        {
            throw new Exception("ERROR: can not get generated surrender ID");
        }
        if (surrenderDTO.getSurrenderType()  == SurrenderType.INDIVIDUAL)
        {
            addIndividual(generatedKey, surrenderDTO.getPhoneNumber() );
        }
        else if (surrenderDTO.getSurrenderType()  == SurrenderType.LOCALANIMALCONTROLDEPARTMENT)
        {
            addLACD(generatedKey, surrenderDTO.getPhoneNumber() );
        }
        return getSurrender(generatedKey);
    }

    public void addIndividual(Integer generatedKey, String phoneNumber)
    {
        surrenderDAO.addIndividual(generatedKey, phoneNumber);
    }

    public void addLACD(Integer generatedKey, String phoneNumber)
    {
        surrenderDAO.addLACD(generatedKey, phoneNumber);
    }

    public SurrenderVO getSurrender(Integer surrenderID)
    {
        return surrenderDAO.getSurrender(surrenderID);
    }
    public Integer updatePhoneNumber(Integer surrenderID, SurrenderDTO surrenderDTO) throws Exception
    {
        /* Ignore the SurrenderType in surrenderDTO*/
        SurrenderVO surrender = getSurrender(surrenderID);
        if (surrender != null)
        {
            if (surrender.getSurrenderType() == SurrenderType.LOCALANIMALCONTROLDEPARTMENT && surrenderDTO.getPhoneNumber() == null)
            {
                throw new Exception("Error: Phone Number for LOCALANIMALCONTROLDEPARTMENT can not be empty");
            }

            return surrenderDAO.updatePhoneNumber(surrender.getSurrenderType(), surrenderDTO.getPhoneNumber(), surrenderID);
        }
        else
        {
            throw new Exception("Error: Can not find Surrender with surrenderID = " + surrenderID.toString());
        }
    }
    public Integer deleteSurrender(Integer surrenderID)
    {
        return surrenderDAO.deleteSurrender(surrenderID);
    }
}
