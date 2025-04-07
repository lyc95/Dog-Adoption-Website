package com.example.dogsdatabase.entity.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserPO {
    private String email;
    private String password;
    private LocalDate birthday;
    private String phone_number;
    private String firstname;
    private String lastname;
    private UserType user_type;

}