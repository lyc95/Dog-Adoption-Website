package com.example.dogsdatabase.entity;

import lombok.Data;

/**
 * @Title: CasualUser
 * @Author ttu
 * @Package com.example.dogsdatabase.entity
 * @Date 2025/3/28 19:24
 * @description:
 */
@Data
public class CasualUser extends User{
    private String email;
    private String password;
    private String phone_number;
    private String firstname;
    private String lastname;

}
