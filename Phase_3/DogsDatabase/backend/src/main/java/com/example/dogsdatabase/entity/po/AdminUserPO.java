package com.example.dogsdatabase.entity.po;

import lombok.Data;

@Data
public class AdminUserPO {
    private String email; // 主键（外键关联User.email ）
    // getters/setters...
}