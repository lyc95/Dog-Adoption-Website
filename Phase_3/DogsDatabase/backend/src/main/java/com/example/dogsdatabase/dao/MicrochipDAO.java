package com.example.dogsdatabase.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.po.MicrochipPO;
import com.example.dogsdatabase.entity.po.MicrochipVendorPO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MicrochipDAO {

    private final JdbcTemplate jdbcTemplate;
    public Integer addMicrochip(MicrochipPO microchipPO)
    {
        String sql = "INSERT INTO microchip (microchipID, dogID, manufacture_name) VALUES (?, ?, ?)";
        Integer rows = jdbcTemplate.update(sql, 
            microchipPO.getMicrochipID(), 
            microchipPO.getDogID(), 
            microchipPO.getManufactureName()
        );
        /* Return affected rows */
        return rows;
    }
    public List<MicrochipPO> getMicrochipForDog(Integer dogId)
    {
        String sql = "SELECT * FROM microchip WHERE dogID = ?";
        List<MicrochipPO> result = jdbcTemplate.query(sql, (rs, rowNum) -> new MicrochipPO(
            rs.getString("microchipID"),
            rs.getInt("dogID"),
            rs.getString("manufacture_name")
        ), dogId);
        return result;
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
        String matchPattern = "%" + pattern + "%";
        String sql = "SELECT * FROM microchipvendor WHERE manufacture_name LIKE ?";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new MicrochipVendorPO(rs.getString("manufacture_name")), matchPattern);
    }
    
    public List<MicrochipVendorPO> findMicrochipVendor(String vendorName)
    {
        String sql = "SELECT * FROM microchipvendor WHERE manufacture_name = ?";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new MicrochipVendorPO(rs.getString("manufacture_name")), vendorName);
    }
}
