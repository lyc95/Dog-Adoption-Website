package com.example.dogsdatabase.dao;

import java.time.YearMonth;
import java.util.List;

import com.example.dogsdatabase.entity.po.UserType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.po.UserPO;
import com.example.dogsdatabase.entity.vo.BirthdayReportItemVO;
import com.example.dogsdatabase.entity.vo.VolunteerLookUpItemVO;

import lombok.RequiredArgsConstructor;

/**
 * @Title: UserRepsitory
 * @Author ttu
 * @Package com.example.dogsdatabase.repository
 * @Date 2025/3/28 17:04
 * @description:
 */
@Repository
@RequiredArgsConstructor
public class UserDao {
    private final JdbcTemplate jdbcTemplate;

    public int insertUser(String email, String password) {
        String sql = "INSERT INTO user (email, password) VALUES (?, ?)";
        return jdbcTemplate.update(sql, email, password);
    }

    public int updateUser(String email, String password) {
        String sql = "UPDATE user SET password = ? WHERE email = ?";
        return jdbcTemplate.update(sql, password, email);
    }

    public int deleteUser(String email) {
        String sql = "DELETE FROM user WHERE email = ?";
        return jdbcTemplate.update(sql, email);
    }

    public UserPO getUserByEmail(String email){
        String sql = "SELECT * FROM user WHERE email = ?";
        return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            UserPO userPO = new UserPO();
            userPO.setEmail(rs.getString("email"));
            userPO.setPassword(rs.getString("password"));
            userPO.setBirthday(rs.getDate("birthday").toLocalDate());
            userPO.setPhone_number(rs.getString("phone_number"));
            userPO.setFirstname(rs.getString("firstname"));
            userPO.setLastname(rs.getString("lastname"));
            userPO.setUser_type(UserType.valueOf(rs.getString("user_type")));
            return userPO;
        }, email);


    }

    public List<BirthdayReportItemVO> getBirthdayReport(YearMonth yearMonth)
    {
        String sql = """
        SELECT 
        firstname, 
        lastname, 
        email, 
        CASE 
        WHEN (? - YEAR(birthday)) % 10 = 0 THEN 'Yes' 
        ELSE 'No' 
        END AS is_milestone 
        FROM 
        `User`
        WHERE user_type = 'VOLUNTEER' AND MONTH(birthday) = ? AND birthday IS NOT NULL;  
        """;
        List<BirthdayReportItemVO> resultList = jdbcTemplate.query(sql, (rs, rowNum) -> new BirthdayReportItemVO(
            rs.getString("firstname"),
            rs.getString("lastname"),
            rs.getString("email"),
            rs.getString("is_milestone")),
            yearMonth.getYear(),
            yearMonth.getMonthValue()
        );
        return resultList;
    }

    public List<VolunteerLookUpItemVO> getVolunteers(String pattern) {
        String sql = """
        SELECT firstname, lastname, email, phone_number 
        FROM `User`
        WHERE user_type = 'VOLUNTEER' AND LOWER(firstname) LIKE ? OR LOWER(lastname) LIKE ?
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
