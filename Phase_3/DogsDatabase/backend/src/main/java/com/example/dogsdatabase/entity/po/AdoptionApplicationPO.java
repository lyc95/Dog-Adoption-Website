package com.example.dogsdatabase.entity.po;

import lombok.Data;

import java.time.LocalDate;

@Data
public class AdoptionApplicationPO {
    private String email;        // 联合主键（外键关联Adopter.email ）
    private LocalDate applicationDate; // 联合主键
    // getters/setters...
}