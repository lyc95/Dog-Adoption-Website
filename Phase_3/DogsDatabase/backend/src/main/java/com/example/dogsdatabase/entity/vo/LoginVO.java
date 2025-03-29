package com.example.dogsdatabase.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LoginVO {
    private String userType;    // 用户类型（Admin/Casual/Volunteer等）
    private String email;
    // getters/setters...
}