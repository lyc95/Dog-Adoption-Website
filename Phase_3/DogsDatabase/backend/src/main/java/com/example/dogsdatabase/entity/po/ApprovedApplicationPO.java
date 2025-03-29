package com.example.dogsdatabase.entity.po;

import lombok.Data;

import java.time.LocalDate;

@Data
public class ApprovedApplicationPO {
    private String email;        // 联合主键 
    private LocalDate application_date; // 联合主键
    private Integer dogID;       // 可空（未匹配时为空）
    private ApplicationState application_state; // 枚举：APPROVED/MATCHED/ADOPTED
    private LocalDate date_approved;
    // getters/setters...
}