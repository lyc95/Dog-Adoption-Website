package com.example.dogsdatabase.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.po.AdoptionApplicationPO;
import com.example.dogsdatabase.entity.po.ApplicationState;
import com.example.dogsdatabase.entity.vo.AdoptionApplicationDisplayVO;

/**
 * @Title: AdoptionApplicationDao
 * @Description: AdoptionApplication数据访问层
 */
@Repository
public class AdoptionApplicationDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 插入收养申请
     * @param application 收养申请信息
     * @return 影响的行数
     */
    public int insertAdoptionApplication(AdoptionApplicationPO application) {
        String sql = "INSERT INTO adoptionapplication (email, application_date) VALUES (?, ?)";
        return jdbcTemplate.update(sql, application.getEmail(), application.getApplication_date());
    }

    /**
     * 更新收养申请状态
     * @param application 收养申请信息
     * @return 影响的行数
     */
    public int updateAdoptionApplicationState(AdoptionApplicationPO application) {
        String sql = "UPDATE adoptionapplication SET application_state = ? WHERE email = ? AND application_date = ?";
        return jdbcTemplate.update(sql, application.getEmail(), application.getApplication_date());
    }

    /**
     * 删除收养申请
     * @param email 收养者邮箱
     * @param applicationDate 申请日期
     * @return 影响的行数
     */
    public int deleteAdoptionApplication(String email, LocalDate applicationDate) {
        String sql = "DELETE FROM adoptionapplication WHERE email = ? AND application_date = ?";
        return jdbcTemplate.update(sql, email, applicationDate);
    }

    /**
     * 获取所有收养申请
     * @return 收养申请列表
     */
    public List<AdoptionApplicationPO> getAllAdoptionApplications() {
        String sql = "SELECT * FROM adoptionapplication ORDER BY application_date DESC";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            AdoptionApplicationPO application = new AdoptionApplicationPO();
            application.setEmail(rs.getString("email"));
            application.setApplication_date(rs.getDate("application_date").toLocalDate());
            return application;
        });
    }

    /**
     * 根据邮箱获取所有收养申请
     * @param email 收养者邮箱
     * @return 收养申请列表
     */
    public List<AdoptionApplicationPO> getAdoptionApplicationsByEmail(String email) {
        String sql = "SELECT * FROM adoptionapplication WHERE email = ?";
        return jdbcTemplate.query(sql, new Object[]{email}, (rs, rowNum) -> {
            AdoptionApplicationPO application = new AdoptionApplicationPO();
            application.setEmail(rs.getString("email"));
            application.setApplication_date(rs.getDate("application_date").toLocalDate());
            return application;
        });
    }
    public int checkAdoptionApplication(String email, LocalDate applicationDate)
    {
        String sql = "SELECT * FROM adoptionapplication WHERE email = ? AND application_date = ?";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new AdoptionApplicationPO(), email, applicationDate).size();
    }

    public List<AdoptionApplicationDisplayVO> getAllPendingAdoptionApplication()
    {
        String sql = """
            SELECT 
                aa.email,
                aa.application_date,
                ad.phone_number,
                ad.household_size,
                ad.firstname,
                ad.lastname,
                ad.street,
                ad.city,
                ad.state,
                ad.zipcode
            FROM adoptionapplication aa
            JOIN adopter ad ON aa.email = ad.email
            WHERE NOT EXISTS (
                SELECT 1 
                FROM approvedapplication ap 
                WHERE ap.email = aa.email 
                AND ap.application_date = aa.application_date
            )
            AND NOT EXISTS (
                SELECT 1 
                FROM rejectedapplication r 
                WHERE r.email = aa.email 
                AND r.application_date = aa.application_date
            )
            ORDER BY application_date DESC;     
        """;
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            AdoptionApplicationDisplayVO adoptionApplicationDisplayVO = new AdoptionApplicationDisplayVO();
            adoptionApplicationDisplayVO.setEmail(rs.getString("email"));
            adoptionApplicationDisplayVO.setApplication_date(rs.getDate("application_date").toLocalDate());
            adoptionApplicationDisplayVO.setPhone_number(rs.getString("phone_number"));
            adoptionApplicationDisplayVO.setHousehold_size(rs.getInt("household_size"));
            adoptionApplicationDisplayVO.setFirstname(rs.getString("firstname"));
            adoptionApplicationDisplayVO.setLastname(rs.getString("lastname"));
            adoptionApplicationDisplayVO.setStreet(rs.getString("street"));
            adoptionApplicationDisplayVO.setCity(rs.getString("city"));
            adoptionApplicationDisplayVO.setState(rs.getString("state"));
            adoptionApplicationDisplayVO.setZipcode(rs.getString("zipcode"));
            return adoptionApplicationDisplayVO;
        });
    }
    public List<AdoptionApplicationDisplayVO> getAllApprovedAdoptionApplication()
    {
        String sql = """
        SELECT 
        ap.email,
        ap.application_date,
        ap.application_state,
        ap.date_approved,
        ad.phone_number,
        ad.household_size,
        ad.firstname,
        ad.lastname,
        ad.street,
        ad.city,
        ad.state,
        ad.zipcode
        FROM approvedapplication ap
        JOIN adopter ad ON ap.email = ad.email
        ORDER BY application_date DESC;
        """;
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            AdoptionApplicationDisplayVO adoptionApplicationDisplayVO = new AdoptionApplicationDisplayVO();
            adoptionApplicationDisplayVO.setEmail(rs.getString("email"));
            adoptionApplicationDisplayVO.setApplication_date(rs.getDate("application_date").toLocalDate());
            adoptionApplicationDisplayVO.setApplication_state(ApplicationState.valueOf(rs.getString("application_state")));
            adoptionApplicationDisplayVO.setDate_approved(rs.getDate("date_approved").toLocalDate());
            adoptionApplicationDisplayVO.setPhone_number(rs.getString("phone_number"));
            adoptionApplicationDisplayVO.setHousehold_size(rs.getInt("household_size"));
            adoptionApplicationDisplayVO.setFirstname(rs.getString("firstname"));
            adoptionApplicationDisplayVO.setLastname(rs.getString("lastname"));
            adoptionApplicationDisplayVO.setStreet(rs.getString("street"));
            adoptionApplicationDisplayVO.setCity(rs.getString("city"));
            adoptionApplicationDisplayVO.setState(rs.getString("state"));
            adoptionApplicationDisplayVO.setZipcode(rs.getString("zipcode"));
            return adoptionApplicationDisplayVO;
        });
    }
    public List<AdoptionApplicationDisplayVO> getAllRejectedAdoptionApplication()
    {
        String sql = """
        SELECT 
        ra.email,
        ra.application_date,
        ra.date_rejected,
        ad.phone_number,
        ad.household_size,
        ad.firstname,
        ad.lastname,
        ad.street,
        ad.city,
        ad.state,
        ad.zipcode
        FROM rejectedapplication ra
        JOIN adopter ad ON ra.email = ad.email
        ORDER BY application_date DESC;
        """;
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            AdoptionApplicationDisplayVO adoptionApplicationDisplayVO = new AdoptionApplicationDisplayVO();
            adoptionApplicationDisplayVO.setEmail(rs.getString("email"));
            adoptionApplicationDisplayVO.setApplication_date(rs.getDate("application_date").toLocalDate());
            adoptionApplicationDisplayVO.setDate_rejected(rs.getDate("date_rejected").toLocalDate());
            adoptionApplicationDisplayVO.setPhone_number(rs.getString("phone_number"));
            adoptionApplicationDisplayVO.setHousehold_size(rs.getInt("household_size"));
            adoptionApplicationDisplayVO.setFirstname(rs.getString("firstname"));
            adoptionApplicationDisplayVO.setLastname(rs.getString("lastname"));
            adoptionApplicationDisplayVO.setStreet(rs.getString("street"));
            adoptionApplicationDisplayVO.setCity(rs.getString("city"));
            adoptionApplicationDisplayVO.setState(rs.getString("state"));
            adoptionApplicationDisplayVO.setZipcode(rs.getString("zipcode"));
            return adoptionApplicationDisplayVO;
        });
    }
    public int approveApplication(AdoptionApplicationPO adoptionApplicationPO)
    {
        String sql = """
        INSERT INTO approvedapplication(email, application_date, application_state, date_approved)
        VALUES(?, ?, ?, ?);
        """;
        return jdbcTemplate.update(sql,
            adoptionApplicationPO.getEmail(),
            adoptionApplicationPO.getApplication_date(),
            ApplicationState.APPROVED.name(),
            LocalDate.now()
        );
    }
    public int rejectApplication(AdoptionApplicationPO adoptionApplicationPO)
    {
        String sql = """
        INSERT INTO rejectedapplication(email, application_date, date_rejected)
        VALUES(?, ?, ?)
        """;
        return jdbcTemplate.update(sql,
            adoptionApplicationPO.getEmail(),
            adoptionApplicationPO.getApplication_date(),
            LocalDate.now()
        );
    }
}