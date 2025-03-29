package com.example.dogsdatabase.entity.po;

import lombok.Data;

import java.time.LocalDate;

@Data
public class CasualUserPO {
    private String email;       // 主键（外键关联User.email ）
    private LocalDate birthday;
    private String phoneNumber;
    private String firstname;
    private String lastname;
    // getters/setters...
}