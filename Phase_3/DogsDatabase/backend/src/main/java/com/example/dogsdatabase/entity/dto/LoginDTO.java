package com.example.dogsdatabase.entity.dto;

import lombok.Data;

@Data
public class LoginDTO {
    private String email;       // 必须与User表字段对应 
    private String password;    // 明文传输
    // getters/setters...
}