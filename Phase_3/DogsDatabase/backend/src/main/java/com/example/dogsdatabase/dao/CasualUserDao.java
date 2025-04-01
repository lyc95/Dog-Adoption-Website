package com.example.dogsdatabase.dao;

import com.example.dogsdatabase.entity.po.CasualUserPO;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

/**
 * @Title: CasualUserDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/4/1 21:00
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class CasualUserDao {
    private final JdbcTemplate jdbcTemplate;

    public int insertCasualUser(CasualUserPO casualUserPO){
        return jdbcTemplate.update("INSERT INTO casualuser (email, birthday, phone_number, firstname, lastname) VALUES (?, ?, ?, ?, ?)",
                casualUserPO.getEmail(), casualUserPO.getBirthday(), casualUserPO.getPhoneNumber(), casualUserPO.getFirstname(), casualUserPO.getLastname());
    }

    public int updateCasualUser(CasualUserPO casualUserPO){
        return jdbcTemplate.update("UPDATE casualuser SET birthday = ?, phone_number = ?, firstname = ?, lastname = ? WHERE email = ?",
                casualUserPO.getBirthday(), casualUserPO.getPhoneNumber(), casualUserPO.getFirstname(), casualUserPO.getLastname(), casualUserPO.getEmail());
    }

    public int deleteCasualUser(String email){
        return jdbcTemplate.update("DELETE FROM casualuser WHERE email = ?", email);
    }

    public CasualUserPO getCasualUserByEmail(String email) {
        String sql = "SELECT * FROM casualuser WHERE email = ?";
        return jdbcTemplate.queryForObject(sql,  (rs, rowNum) -> {
            CasualUserPO user = new CasualUserPO();
            // 必须判空的字段处理
            java.sql.Date  sqlDate = rs.getDate("birthday");
            user.setBirthday(sqlDate  != null ? sqlDate.toLocalDate()  : null);

            // 其他字段（建议都做空检查）
            user.setEmail(rs.getString("email"));  // 重要字段建议加非空校验
            user.setPhoneNumber(rs.getString("phone_number"));
            user.setFirstname(rs.getString("firstname"));
            user.setLastname(rs.getString("lastname"));
            return user;
        }, email);
    }

    public int getCasualUserCount(){
        return jdbcTemplate.queryForObject("SELECT COUNT(*) FROM casualuser", Integer.class);
    }

    public List<CasualUserPO> getAllCasualUsers(){
        return jdbcTemplate.query("SELECT * FROM casualuser", (rs, rowNum) -> {
            CasualUserPO casualUserPO = new CasualUserPO();
            casualUserPO.setEmail(rs.getString("email"));
            LocalDate birthdaySqlDate = rs.getDate("birthday") != null ? rs.getDate("birthday").toLocalDate() : LocalDate.of(1970,1,1) ;
            casualUserPO.setBirthday(birthdaySqlDate);
            casualUserPO.setPhoneNumber(rs.getString("phone_number"));
            casualUserPO.setFirstname(rs.getString("firstname"));
            casualUserPO.setLastname(rs.getString("lastname"));
            return casualUserPO;
        });
    }

}
