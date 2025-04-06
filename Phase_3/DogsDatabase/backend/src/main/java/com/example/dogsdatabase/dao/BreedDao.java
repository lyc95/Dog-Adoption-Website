package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.BreedPO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Title: BreedDao
 * @Description: Breed数据访问层
 */
@Repository
public class BreedDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 插入品种
     * @param breed 品种信息
     * @return 影响的行数
     */
    public int insertBreed(BreedPO breed) {
        String sql = "INSERT INTO breed (breedname) VALUES (?)";
        return jdbcTemplate.update(sql, breed.getBreedname());
    }

    /**
     * 更新品种
     * @param breed 品种信息
     * @return 影响的行数
     */
    public int updateBreed(BreedPO breed) {
        String sql = "UPDATE breed SET breedname = ? WHERE breedname = ?";
        return jdbcTemplate.update(sql, breed.getBreedname(), breed.getBreedname());
    }

    /**
     * 删除品种
     * @param breedname 品种名称
     * @return 影响的行数
     */
    public int deleteBreed(String breedname) {
        String sql = "DELETE FROM breed WHERE breedname = ?";
        return jdbcTemplate.update(sql, breedname);
    }

    /**
     * 根据品种名称获取品种
     * @param breedname 品种名称
     * @return 品种信息
     */
    public BreedPO getBreedByBreedname(String breedname) {
        String sql = "SELECT * FROM breed WHERE breedname = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{breedname}, (rs, rowNum) -> {
            BreedPO breed = new BreedPO();
            breed.setBreedname(rs.getString("breedname"));
            return breed;
        });
    }

    /**
     * 获取所有品种
     * @return 品种列表
     */
    public List<BreedPO> getAllBreeds() {
        String sql = "SELECT * FROM breed";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            BreedPO breed = new BreedPO();
            breed.setBreedname(rs.getString("breedname"));
            return breed;
        });
    }
}