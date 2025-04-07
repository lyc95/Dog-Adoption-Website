package com.example.dogsdatabase.entity.po;

import lombok.Data;

@Data
public class VolunteerPO {
    private String email; // 主键（外键关联CasualUser.email ）
    private Integer age;  // 年龄必须≥0 
    // getters/setters...
}