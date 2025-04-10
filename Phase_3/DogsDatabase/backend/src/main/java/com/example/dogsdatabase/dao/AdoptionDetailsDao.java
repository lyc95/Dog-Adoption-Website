package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.AdoptionDetailsPO;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * @Title: AdoptionDetailsDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/4/10 22:24
 * @description:
 */

@Repository
@RequiredArgsConstructor
public class AdoptionDetailsDao {
    private final JdbcTemplate jdbcTemplate;

    public int insertAdoptionDetails(AdoptionDetailsPO adoptionDetailsPO) {
        String sql = "INSERT INTO adoptiondetails (dogID, email, application_date, adoption_date, adoption_fee) VALUES (?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, adoptionDetailsPO.getDogID(), adoptionDetailsPO.getEmail(), adoptionDetailsPO.getApplication_date(), adoptionDetailsPO.getAdoption_date(), adoptionDetailsPO.getAdoption_fee());
    }
}
