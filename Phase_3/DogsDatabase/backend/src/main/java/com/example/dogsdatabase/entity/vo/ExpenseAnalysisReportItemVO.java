package com.example.dogsdatabase.entity.vo;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ExpenseAnalysisReportItemVO {
    private String vendorName;
    private BigDecimal totalSpent;
    
}
