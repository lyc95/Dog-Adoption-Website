package com.example.dogsdatabase.entity.po;

import lombok.Data;

import java.time.LocalDate;

@Data
public class RejectedApplicationPO {
    private String email;        // 联合主键 
    private LocalDate applicationDate; // 联合主键
    private LocalDate dateRejected;
    // getters/setters...
}