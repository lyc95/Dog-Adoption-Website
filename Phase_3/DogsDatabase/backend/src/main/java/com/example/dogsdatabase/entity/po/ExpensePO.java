package com.example.dogsdatabase.entity.po;
import java.math.BigDecimal;
import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExpensePO {
    private Integer dogID;        // 联合主键 
    private String vendorName;    // 联合主键 
    private String category;       // 联合主键 
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate expenseDate; // 联合主键
    private BigDecimal amount;     // 金额（DECIMAL映射）
    
    
    // getters/setters...
}