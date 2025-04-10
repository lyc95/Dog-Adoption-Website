package com.example.dogsdatabase.entity.po;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdoptionApplicationPO {
    private String email;        // 联合主键（外键关联Adopter.email ）
    private LocalDate application_date; // 联合主键
    // getters/setters...
}