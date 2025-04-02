package com.example.dogsdatabase.entity.vo;

import java.math.BigDecimal;
import java.time.YearMonth;

import lombok.AllArgsConstructor;
import lombok.Data;
@Data
@AllArgsConstructor
public class MonthlyAdoptionReportItemVO {
    private YearMonth yearMonth;
    private String breeds;
    private Integer dogsSurrendered;
    private Integer dogsAdopted;
    private BigDecimal totalExpenses;
    private BigDecimal adoptionFees;
    private BigDecimal netProfit;
}
