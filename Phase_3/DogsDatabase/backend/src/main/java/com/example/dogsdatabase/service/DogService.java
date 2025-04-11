package com.example.dogsdatabase.service;

import java.math.BigDecimal;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.dogsdatabase.dao.DogDao;
import com.example.dogsdatabase.dao.ExpenseDAO;
import com.example.dogsdatabase.dao.MicrochipDAO;
import com.example.dogsdatabase.dao.SurrenderDAO;
import com.example.dogsdatabase.entity.dto.DogDTO;
import com.example.dogsdatabase.entity.po.BreedPO;
import com.example.dogsdatabase.entity.po.DogPO;
import com.example.dogsdatabase.entity.po.MicrochipPO;
import com.example.dogsdatabase.entity.po.SurrenderType;
import com.example.dogsdatabase.entity.vo.DogDetailsVO;
import com.example.dogsdatabase.entity.vo.DogReportVO;
import com.example.dogsdatabase.entity.vo.DogVO;
import com.example.dogsdatabase.entity.vo.ExpensePerCategoryVO;

import lombok.RequiredArgsConstructor;

/**
 * @Title: DogService
 * @Author ttu
 * @Package com.example.dogsdatabase.service
 * @Date 2025/3/29 21:39
 * @description:
 */
@Service
@RequiredArgsConstructor
public class DogService {

    private final DogDao dogDao;
    private final SurrenderDAO surrenderDAO;
    private final ExpenseDAO expenseDAO;
    private final MicrochipDAO microchipDAO;
    private final JdbcTemplate jdbcTemplate;

    public int insertDog(DogVO dog) {
        return dogDao.insertDog(dog);
    }

    public int updateDog(DogVO dog) {
        return dogDao.updateDog(dog);
    }

    public int deleteDog(Integer dogID) {
        return dogDao.deleteDog(dogID);
    }

    public DogVO getDogByID(Integer dogID) {
        DogVO dogVO = new DogVO();
        DogPO dogPO = dogDao.getDogByID(dogID);
        if (dogPO == null) {
            throw new RuntimeException("Dog not found");
        }
        BeanUtils.copyProperties(dogPO, dogVO);
        dogVO.setBreed(getDogBreedName(dogPO.getDogID()));
        return dogVO;
    }

    public List<DogVO> getAllDogs() {
        List<DogVO> dogVOS = new ArrayList<>();
        for (DogPO dogPO : dogDao.getAllDogs()) {
            if(!dogPO.getAdoption_state()){ //若未领养，添加到列表中
                DogVO dogVO = new DogVO();
                BeanUtils.copyProperties(dogPO, dogVO);
                dogVO.setBreed(getDogBreedName(dogPO.getDogID()));
                dogVOS.add(dogVO);
            }
        }
        return dogVOS;
    }

    private String getDogBreedName(Integer dogID) {
        // 1. 参数校验
        if (dogID == null) {
            return "";
        }

        String sql = "SELECT `breedname` FROM `dogbreed` WHERE `dogID` = ?";

        List<String> dogBreeds = jdbcTemplate.query(
                sql,
                new Object[]{dogID},  // 参数数组
                (rs, rowNum) -> rs.getString("breedname")   // 直接提取字段值
        );

        // 4. 使用StringJoiner优化字符串拼接（JDK8+）
        return dogBreeds.isEmpty()  ? "" : String.join(",",  dogBreeds);
    }
    public List<DogReportVO> getAllDogsSurrenderedByLACDInMonth(YearMonth yearMonth)
    {
        return dogDao.getAllDogsSurrenderedByLACDInMonth(yearMonth);
    }
    public List<DogReportVO> getAllDogsdogsAdoptedAfter60DaysInMonth(YearMonth yearMonth)
    {
        return dogDao.getAllDogsdogsAdoptedAfter60DaysInMonth(yearMonth);
    }
    public List<DogReportVO> getAllDogsAdoptedWithExpensesInMonth(YearMonth yearMonth)
    {
        List<DogReportVO> dogList = dogDao.getAllDogsAdoptedWithExpensesInMonth(yearMonth);
        return dogList;
    }
    public DogDetailsVO getDogDetailsByDogID(Integer dogID) throws Exception
    {
        if (dogID == null || dogID < 0)
        {
            throw new Exception("Error: Invalid Dog ID");
        }
        DogDetailsVO dogDetailsVO = dogDao.getDogDetailsByDogID(dogID);
        List<ExpensePerCategoryVO> expensesForDog = expenseDAO.getExpensesPerCategoryDogId(dogID);
        BigDecimal grandTotal = expensesForDog.stream().map(ExpensePerCategoryVO::getTotalExpense).reduce(BigDecimal.ZERO, BigDecimal::add);
        dogDetailsVO.setDogExpensesList(expensesForDog);
        dogDetailsVO.setGrandTotal(grandTotal);
        return dogDetailsVO;
    }
    public int updateAlterationStatus(Integer dogID) throws Exception
    {
        if (dogID == null || dogID < 0)
        {
            throw new Exception("Error: Invalid Dog ID");
        }
        return dogDao.updateAlterationStatus(dogID);
    }

    public List<BreedPO> getDogBreeds(String searchPattern)
    {
        return dogDao.getDogBreeds(searchPattern);
    }
    public int updateDogBreeds(List<String> breeds, Integer dogID) throws Exception
    {
        if (dogID == null || dogID < 0)
        {
            throw new Exception("Error: Invalid Dog ID"); 
        }
        else if (breeds.isEmpty())
        {
            throw new Exception("Error: Empty breeds"); 
        }
        return dogDao.updateDogBreeds(breeds, dogID);
    }
    public int addDogWithDetails(DogDTO dogDTO) throws Exception
    {
        if (dogDTO.getSurrenderType() != SurrenderType.INDIVIDUAL && dogDTO.getSurrenderType() != SurrenderType.LOCALANIMALCONTROLDEPARTMENT)
        {
            throw new Exception("Error: invalid surrender type"); 
        }
        // Add surrender
        int surrenderID = surrenderDAO.addSurrender(dogDTO.getSurrenderType(), dogDTO.getPhonenumber());
        // Add dog
        DogVO dogVO = new DogVO();
        dogVO.setName(dogDTO.getName());
        dogVO.setSex(dogDTO.getSex());
        dogVO.setSurrender_date(dogDTO.getSurrenderDate());
        dogVO.setAge_when_surrender(dogDTO.getAge());
        dogVO.setAlteration_status(dogDTO.getAlterationStatus());
        dogVO.setDescription(dogDTO.getDescription());
        dogVO.setAdoption_state(false);
        dogVO.setSurrenderID(surrenderID);
        int dogID = insertDog(dogVO);
        //Add breeds
        dogDao.addDogBreeds(dogDTO.getBreed(), dogID);
        //Add MicroChip
        if (!dogDTO.getMicrochipID().isEmpty() && !dogDTO.getManufactureName().isEmpty())
        {
            MicrochipPO microchipPO = new MicrochipPO(dogDTO.getMicrochipID(), dogID, dogDTO.getManufactureName());
            microchipDAO.addMicrochip(microchipPO);
        }
        return dogID;
    }
}