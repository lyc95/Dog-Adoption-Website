package com.example.dogsdatabase.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LoginVO {
    private String email;
    private String userType;    // 用户类型（Admin/ED/Volunteer等）
    private int age;
    // getters/setters...
}