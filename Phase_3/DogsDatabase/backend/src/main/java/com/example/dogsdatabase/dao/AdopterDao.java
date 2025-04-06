package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.AdopterPO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Title: AdopterDao
 * @Description: Adopter数据访问层
 */
@Repository
public class AdopterDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 插入收养者信息
     * @param adopter 收养者信息
     * @return 影响的行数
     */
    public int insertAdopter(AdopterPO adopter) {
        String sql = "INSERT INTO adopter (email, phone_number, household_size, firstname, lastname, street, city, state, zipcode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                adopter.getEmail(),
                adopter.getPhoneNumber(),
                adopter.getHouseholdSize(),
                adopter.getFirstname(),
                adopter.getLastname(),
                adopter.getStreet(),
                adopter.getCity(),
                adopter.getState(),
                adopter.getZipcode());
    }

    /**
     * 更新收养者信息
     * @param adopter 收养者信息
     * @return 影响的行数
     */
    public int updateAdopter(AdopterPO adopter) {
        String sql = "UPDATE adopter SET phone_number = ?, household_size = ?, firstname = ?, lastname = ?, street = ?, city = ?, state = ?, zipcode = ? WHERE email = ?";
        return jdbcTemplate.update(sql,
                adopter.getPhoneNumber(),
                adopter.getHouseholdSize(),
                adopter.getFirstname(),
                adopter.getLastname(),
                adopter.getStreet(),
                adopter.getCity(),
                adopter.getState(),
                adopter.getZipcode(),
                adopter.getEmail());
    }

    /**
     * 删除收养者信息
     * @param email 收养者邮箱
     * @return 影响的行数
     */
    public int deleteAdopter(String email) {
        String sql = "DELETE FROM adopter WHERE email = ?";
        return jdbcTemplate.update(sql, email);
    }

    /**
     * 根据邮箱获取收养者信息
     * @param email 收养者邮箱
     * @return 收养者信息
     */
    public AdopterPO getAdopterByEmail(String email) {
        String sql = "SELECT * FROM adopter WHERE email = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{email}, (rs, rowNum) -> {
            AdopterPO adopter = new AdopterPO();
            adopter.setEmail(rs.getString("email"));
            adopter.setPhoneNumber(rs.getString("phone_number"));
            adopter.setHouseholdSize(rs.getInt("household_size"));
            adopter.setFirstname(rs.getString("firstname"));
            adopter.setLastname(rs.getString("lastname"));
            adopter.setStreet(rs.getString("street"));
            adopter.setCity(rs.getString("city"));
            adopter.setState(rs.getString("state"));
            adopter.setZipcode(rs.getString("zipcode"));
            return adopter;
        });
    }

    /**
     * 获取所有收养者
     * @return 收养者列表
     */
    public List<AdopterPO> getAllAdopters() {
        String sql = "SELECT * FROM adopter";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            AdopterPO adopter = new AdopterPO();
            adopter.setEmail(rs.getString("email"));
            adopter.setPhoneNumber(rs.getString("phone_number"));
            adopter.setHouseholdSize(rs.getInt("household_size"));
            adopter.setFirstname(rs.getString("firstname"));
            adopter.setLastname(rs.getString("lastname"));
            adopter.setStreet(rs.getString("street"));
            adopter.setCity(rs.getString("city"));
            adopter.setState(rs.getString("state"));
            adopter.setZipcode(rs.getString("zipcode"));
            return adopter;
        });
    }
}