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
import com.example.dogsdatabase.entity.po.DogPO;
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
    private final ExpenseDAO expenseDAO;
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
            DogVO dogVO = new DogVO();
            BeanUtils.copyProperties(dogPO, dogVO);
            dogVO.setBreed(getDogBreedName(dogPO.getDogID()));
            dogVOS.add(dogVO);
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
}
