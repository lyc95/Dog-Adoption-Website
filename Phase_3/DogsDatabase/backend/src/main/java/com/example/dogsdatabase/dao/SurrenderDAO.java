package com.example.dogsdatabase.dao;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.po.SurrenderType;
import com.example.dogsdatabase.entity.vo.SurrenderVO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class SurrenderDAO {
    private final JdbcTemplate jdbcTemplate;

    public Integer addSurrender()
    {
        String sql = "INSERT INTO surrender VALUES ()";
        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            return ps;
        }, keyHolder);
        return keyHolder.getKey() != null ?  keyHolder.getKey().intValue() : null;
    }

    public Integer addSurrender(SurrenderType type, String phoneNumber)
    {
        Integer surrenderID = addSurrender();
        if (type == SurrenderType.INDIVIDUAL)
        {
            addIndividual(surrenderID, phoneNumber);
        }
        else
        {
            addLACD(surrenderID, phoneNumber);
        }
        return surrenderID;
    }
    public void addIndividual(Integer generatedKey, String phoneNumber)
    {
        String sql = "INSERT INTO individual(surrenderID, phonenumber) VALUES (?, ?)";
        jdbcTemplate.update(sql, generatedKey, phoneNumber);
    }
    public void addLACD(Integer generatedKey, String phoneNumber)
    {
        String sql = "INSERT INTO localanimalcontroldepartment(surrenderID, phonenumber) VALUES (?, ?)";
        jdbcTemplate.update(sql, generatedKey, phoneNumber);
    }

    public SurrenderVO getSurrender(Integer surrenderID)
    {
        /* Searching for individual */
        String sql = "SELECT * FROM individual WHERE surrenderID = ?";
        List<SurrenderVO> result = jdbcTemplate.query(sql, (rs, rowNum) -> new SurrenderVO(
            rs.getInt("surrenderID"), 
            rs.getString("phonenumber"),
            SurrenderType.INDIVIDUAL),
            surrenderID
        );
        if (result.isEmpty())
        {
            /* Searching for individual */
            sql = "SELECT * FROM localanimalcontroldepartment WHERE surrenderID = ?";
            result = jdbcTemplate.query(sql, (rs, rowNum) -> new SurrenderVO(
                rs.getInt("surrenderID"), 
                rs.getString("phonenumber"),
                SurrenderType.LOCALANIMALCONTROLDEPARTMENT),
                surrenderID
            );
        }
        return result.isEmpty() ? null : result.get(0);
    }
    public Integer updatePhoneNumber(SurrenderType surrenderType, String phoneNumber, Integer surrenderID)
    {
        if (surrenderType == SurrenderType.INDIVIDUAL)
        {
            String sql = "UPDATE individual SET phonenumber = ? WHERE surrenderID = ?";
            return jdbcTemplate.update(sql, phoneNumber, surrenderID);
        }
        else if (surrenderType == SurrenderType.LOCALANIMALCONTROLDEPARTMENT)
        {
            String sql = "UPDATE localanimalcontroldepartment SET phonenumber = ? WHERE surrenderID = ?";
            return jdbcTemplate.update(sql, phoneNumber, surrenderID);
        }
        return 0;
    }
    public Integer deleteSurrender(Integer surrenderID)
    {
        Integer deletedRows = 0;

        /* Delete children items for individual*/
        String sql = "DELETE FROM individual WHERE surrenderID = ?";
        deletedRows += jdbcTemplate.update(sql, surrenderID);
        /* Delete children items for localanimalcontroldepartment*/
        sql = "DELETE FROM localanimalcontroldepartment WHERE surrenderID = ?";
        deletedRows += jdbcTemplate.update(sql, surrenderID);

        /* Delete parent items */
        sql = "DELETE FROM surrender WHERE surrenderID = ?";
        deletedRows += jdbcTemplate.update(sql, surrenderID);

        return deletedRows;
    }
}
