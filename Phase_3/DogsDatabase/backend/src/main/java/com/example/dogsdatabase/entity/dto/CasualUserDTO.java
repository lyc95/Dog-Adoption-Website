package com.example.dogsdatabase.entity.dto;

import lombok.Data;

/**
 * @Title: CasualUser
 * @Author ttu
 * @Package com.example.dogsdatabase.entity
 * @Date 2025/3/28 19:24
 * @description:
 */
@Data
public class CasualUserDTO extends UserDTO {
    private String email;
    private String password;
    private String phone_number;
    private String firstname;
    private String lastname;

}
