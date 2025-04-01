package com.example.dogsdatabase.service;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

import com.example.dogsdatabase.entity.dto.SurrenderDTO;
import com.example.dogsdatabase.entity.po.SurrenderType;
import com.example.dogsdatabase.entity.vo.SurrenderVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SurrenderService {
    private final JdbcTemplate jdbcTemplate;

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

        String sql = "INSERT INTO surrender VALUES ()";
        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            return ps;
        }, keyHolder);
        
        Integer generatedKey = null;
        if (keyHolder.getKey() != null)
        {
            generatedKey = keyHolder.getKey().intValue();
        }
        else
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
        String sql = "INSERT INTO individual(surrenderID, phonenumber) VALUES (?, ?)";
        jdbcTemplate.update(sql, generatedKey, phoneNumber);
        
    }
    public void addLACD(Integer generatedKey, String phoneNumber)
    {
        String sql = "INSERT INTO localanimalcontroldepartment(surrenderID, phonenumber) VALUES (?, ?)";
        jdbcTemplate.update(sql, generatedKey, phoneNumber);
    }

    public SurrenderVO getSurrender(Integer surrenderID)
    {
        /* Searching for individual */
        String sql = "SELECT * FROM individual WHERE surrenderID = ?";
        List<SurrenderVO> result = jdbcTemplate.query(sql, (rs, rowNum) -> new SurrenderVO(
            rs.getInt("surrenderID"), 
            rs.getString("phonenumber"),
            SurrenderType.INDIVIDUAL),
            surrenderID
        );
        if (result.isEmpty())
        {
            /* Searching for individual */
            sql = "SELECT * FROM localanimalcontroldepartment WHERE surrenderID = ?";
            result = jdbcTemplate.query(sql, (rs, rowNum) -> new SurrenderVO(
                rs.getInt("surrenderID"), 
                rs.getString("phonenumber"),
                SurrenderType.LOCALANIMALCONTROLDEPARTMENT),
                surrenderID
            );
        }
        return result.isEmpty() ? null : result.get(0);

    }
    public Integer updatePhoneNumber(Integer surrenderID, SurrenderDTO surrenderDTO) throws Exception
    {
        /* Ignore the SurrenderType in surrenderDTO*/
        SurrenderVO surrender = getSurrender(surrenderID);
        if (surrender != null)
        {
            if (surrender.getSurrenderType() == SurrenderType.INDIVIDUAL)
            {
                String sql = "UPDATE individual SET phonenumber = ? WHERE surrenderID = ?";
                return jdbcTemplate.update(sql, surrenderDTO.getPhoneNumber(), surrenderID);
            }
            else if (surrender.getSurrenderType() == SurrenderType.LOCALANIMALCONTROLDEPARTMENT)
            {
                String sql = "UPDATE localanimalcontroldepartment SET phonenumber = ? WHERE surrenderID = ?";
                return jdbcTemplate.update(sql, surrenderDTO.getPhoneNumber(), surrenderID);
            }
        }
        else
        {
            throw new Exception("Can not find Surrender with surrenderID = " + surrenderID.toString());
        }
        return 0;
    }
    public Integer deleteSurrender(Integer surrenderID)
    {
        
        Integer deletedRows = 0;

        /* Delete children items for individual*/
        String sql = "DELETE FROM individual WHERE surrenderID = ?";
        deletedRows += jdbcTemplate.update(sql, surrenderID);
        /* Delete children items for localanimalcontroldepartment*/
        sql = "DELETE FROM localanimalcontroldepartment WHERE surrenderID = ?";
        deletedRows += jdbcTemplate.update(sql, surrenderID);

        /* Delete parent items */
        sql = "DELETE FROM surrender WHERE surrenderID = ?";
        deletedRows += jdbcTemplate.update(sql, surrenderID);

        return deletedRows;
        
    }
}
