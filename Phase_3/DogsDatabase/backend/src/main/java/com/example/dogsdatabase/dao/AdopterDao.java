package com.example.dogsdatabase.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.po.AdopterPO;

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
                adopter.getPhone_number(),
                adopter.getHousehold_size(),
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
                adopter.getPhone_number(),
                adopter.getHousehold_size(),
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
        List<AdopterPO> adopterPOs = jdbcTemplate.query(sql, (rs, rowNum) -> {
            AdopterPO adopter = new AdopterPO();
            adopter.setEmail(rs.getString("email"));
            adopter.setPhone_number(rs.getString("phone_number"));
            adopter.setHousehold_size(rs.getInt("household_size"));
            adopter.setFirstname(rs.getString("firstname"));
            adopter.setLastname(rs.getString("lastname"));
            adopter.setStreet(rs.getString("street"));
            adopter.setCity(rs.getString("city"));
            adopter.setState(rs.getString("state"));
            adopter.setZipcode(rs.getString("zipcode"));
            return adopter;
        }, email);
        if (!adopterPOs.isEmpty())
        {
            return adopterPOs.get(0);
        }
        else
        {
            return null;
        }
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
            adopter.setPhone_number(rs.getString("phone_number"));
            adopter.setHousehold_size(rs.getInt("household_size"));
            adopter.setFirstname(rs.getString("firstname"));
            adopter.setLastname(rs.getString("lastname"));
            adopter.setStreet(rs.getString("street"));
            adopter.setCity(rs.getString("city"));
            adopter.setState(rs.getString("state"));
            adopter.setZipcode(rs.getString("zipcode"));
            return adopter;
        });
    }

    public List<AdopterPO> getAdopterByLastname(String lastname) {
        // 方法更名为getAdopterByLastname，参数名更准确
        String sql = "SELECT DISTINCT * FROM adopter a " +
                "JOIN approvedapplication aa " +
                "ON a.email = aa.email " +
                "WHERE LOWER(lastname) LIKE LOWER(?) AND application_state = 'APPROVED'";
        // 添加通配符实现模糊匹配
        String searchTerm = "%" + lastname + "%";
        return jdbcTemplate.query(sql, new Object[]{searchTerm}, (rs, rowNum) -> {
            AdopterPO adopter = new AdopterPO();
            adopter.setEmail(rs.getString("email"));
            adopter.setPhone_number(rs.getString("phone_number"));
            adopter.setHousehold_size(rs.getInt("household_size"));
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