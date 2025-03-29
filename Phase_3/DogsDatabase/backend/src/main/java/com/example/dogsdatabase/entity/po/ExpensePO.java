package com.example.dogsdatabase.entity.po;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
public class ExpensePO {
    private Integer dogID;        // 联合主键 
    private String vendorName;    // 联合主键 
    private String category;       // 联合主键 
    private LocalDate expenseDate; // 联合主键
    private BigDecimal amount;     // 金额（DECIMAL映射）
    // getters/setters...
}