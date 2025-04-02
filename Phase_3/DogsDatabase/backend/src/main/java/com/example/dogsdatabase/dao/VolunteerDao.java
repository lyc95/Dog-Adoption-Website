package com.example.dogsdatabase.dao;

import java.time.YearMonth;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.po.VolunteerPO;
import com.example.dogsdatabase.entity.vo.BirthdayReportItemVO;
import com.example.dogsdatabase.entity.vo.VolunteerLookUpItemVO;

import lombok.RequiredArgsConstructor;

/**
 * @Title: VolunteerDao
 * @Author ttu
 * @Package com.example.dogsdatabase.dao
 * @Date 2025/4/1 21:46
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class VolunteerDao {
    private final JdbcTemplate jdbcTemplate;

    public int insertVolunteer(VolunteerPO volunteerPO){
        return jdbcTemplate.update("INSERT INTO volunteer (email, age) VALUES (?, ?)",
                volunteerPO.getEmail(), volunteerPO.getAge());
    }

    public int updateVolunteer(VolunteerPO volunteerPO){
        return jdbcTemplate.update("UPDATE volunteer SET age = ? WHERE email = ?",
                volunteerPO.getAge(), volunteerPO.getEmail());
    }

    public int deleteVolunteer(String email){
        return jdbcTemplate.update("DELETE FROM volunteer WHERE email = ?", email);
    }

    public VolunteerPO getVolunteerByEmail(String email){
        String sql = "SELECT * FROM volunteer WHERE email = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{email}, (rs, rowNum) -> {
            VolunteerPO volunteerPO = new VolunteerPO();
            volunteerPO.setEmail(rs.getString("email"));
            volunteerPO.setAge(rs.getInt("age"));
            return volunteerPO;
        });

    }

    public int getVolunteerCount(){
        String sql = "SELECT COUNT(*) FROM volunteer";
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    public List<VolunteerPO> getAllVolunteers(){
        String sql = "SELECT * FROM volunteer";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            VolunteerPO volunteerPO = new VolunteerPO();
            volunteerPO.setEmail(rs.getString("email"));
            volunteerPO.setAge(rs.getInt("age"));
            return volunteerPO;
        });
    }
    
    public List<BirthdayReportItemVO> getBirthdayReport(YearMonth yearMonth)
    {
        String sql = """
            SELECT 
            cu.firstname, 
            cu.lastname, 
            cu.email, 
            CASE 
            WHEN (? - YEAR(cu.birthday)) % 10 = 0 THEN 'Yes' 
            ELSE 'No' 
            END AS is_milestone 
            FROM 
            CasualUser cu INNER JOIN Volunteer v ON cu.email = v.email 
            WHERE MONTH(cu.birthday) = ? AND cu.birthday IS NOT NULL;     
        """;
        List<BirthdayReportItemVO> resultList = jdbcTemplate.query(sql, (rs, rowNum) -> new BirthdayReportItemVO(
            rs.getString("firstname"),
            rs.getString("lastname"),
            rs.getString("email"),
            rs.getString("is_milestone").equals("Yes")),
            yearMonth.getYear(),
            yearMonth.getMonthValue()
        );
        return resultList;
    }

    public List<VolunteerLookUpItemVO> getVolunteers(String pattern) {
        String sql = """
            SELECT firstname, lastname, email, phone_number 
            FROM CasualUser 
            NATURAL JOIN volunteer 
            WHERE LOWER(firstname) LIKE ? OR LOWER(lastname) LIKE ?
            ORDER BY lastname ASC, firstname ASC; 
        """;
        List<VolunteerLookUpItemVO> resultList =  jdbcTemplate.query(sql, (rs, rowNum) -> new VolunteerLookUpItemVO(
            rs.getString("firstname"),
            rs.getString("lastname"),
            rs.getString("email"),
            rs.getString("phone_number")),
            "%" + pattern + "%",
            "%" + pattern + "%"
        );
        return resultList;
    }
}