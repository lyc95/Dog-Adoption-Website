package com.example.dogsdatabase.entity.vo;

import java.math.BigDecimal;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ExpenseAnalysisReportItemVO {
    private String vendorName;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "0.00")
    private BigDecimal totalSpent;
    
}
