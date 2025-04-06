package com.example.dogsdatabase.entity.vo;

import java.math.BigDecimal;
import java.time.YearMonth;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
@Data
@AllArgsConstructor
public class MonthlyAdoptionReportItemVO {
    private YearMonth yearMonth;
    private String breeds;
    private Integer dogsSurrendered;
    private Integer dogsAdopted;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "0.00")
    private BigDecimal totalExpenses;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "0.00")
    private BigDecimal adoptionFees;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "0.00")
    private BigDecimal netProfit;
}
