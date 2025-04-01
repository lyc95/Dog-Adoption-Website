package com.example.dogsdatabase.service;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.dogsdatabase.entity.po.MicrochipPO;
import com.example.dogsdatabase.entity.po.MicrochipVendorPO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MicrochipService {

    private final JdbcTemplate jdbcTemplate;

    public Integer addMicrochip(MicrochipPO microchipPO) throws Exception
    {
        if (checkMicrochipForDog(microchipPO.getDogID()))
        {
            throw new Exception("The dog had resgistered Microchip already with dogId = " + microchipPO.getDogID());
        }
        String sql = "INSERT INTO microchip (microchipID, dogID, manufacture_name) VALUES (?, ?, ?)";
        Integer rows = jdbcTemplate.update(sql, 
            microchipPO.getMicrochipID(), 
            microchipPO.getDogID(), 
            microchipPO.getManufactureName()
        );
        /* Return affected rows */
        return rows;
    }
    public Boolean checkMicrochipForDog(Integer dogId)
    {
        String sql = "SELECT * FROM microchip WHERE dogID = ?";
        List<MicrochipPO> result = jdbcTemplate.query(sql, (rs, rowNum) -> new MicrochipPO(
            rs.getString("microchipID"),
            rs.getInt("dogID"),
            rs.getString("manufacture_name")
        ), dogId);
        /* Return True of dod had Microchip registered otherwise return false*/
        return !result.isEmpty();
    }
    public Integer updateMicrochip(MicrochipPO microchipPO)
    {
        /* To update DogId and manufacture_name*/
        String sql = "UPDATE microchip SET dogID = ?, manufacture_name = ? WHERE microchipID = ?";
        Integer rows = jdbcTemplate.update(sql,
            microchipPO.getDogID(),
            microchipPO.getManufactureName(),
            microchipPO.getMicrochipID()
        );
        /* Return affected rows */
        return rows;
    }
    public List<MicrochipPO> getMicrochip(String microchipID)
    {
        String sql = "SELECT * FROM microchip WHERE microchipID = ?";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new MicrochipPO(
            rs.getString("microchipID"),
            rs.getInt("dogID"),
            rs.getString("manufacture_name")
        ), microchipID);
    }
    public Integer deleteMicrochip(String microchipID)
    {
        String sql = "DELETE FROM microchip WHERE microchipID = ?";
        Integer rows = jdbcTemplate.update(sql, microchipID);
        /* Return affected rows */
        return rows;
    }
    public List<MicrochipVendorPO> getMicrochipVendors()
    {
        String sql = "SELECT * FROM microchipvendor";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new MicrochipVendorPO(rs.getString("manufacture_name")));
    }

    public List<MicrochipVendorPO> getMicrochipVendors(String pattern)
    {
        if (pattern == null || pattern.isEmpty())
        {
            return getMicrochipVendors();
        }
        String matchPattern = "%" + pattern + "%";
        String sql = "SELECT * FROM microchipvendor WHERE manufacture_name LIKE ?";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new MicrochipVendorPO(rs.getString("manufacture_name")), matchPattern);
    }
}
