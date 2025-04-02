package com.example.dogsdatabase.entity.vo;

import java.math.BigDecimal;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor 
public class LACDReportVO {

    private YearMonth yearMonth;
    private Integer dogsSurrenderedByLACD;
    private Integer dogsAdoptedAfter60Days;
    private BigDecimal dogsAdoptedTotalExpenses;

    private List<DogReportVO> dogsSurrenderedByLACDList = new ArrayList<>();
    private List<DogReportVO> dogsAdoptedAfter60Dayslist = new ArrayList<>();
    private List<DogReportVO> dogsAdoptedExpensesList = new ArrayList<>();
}
