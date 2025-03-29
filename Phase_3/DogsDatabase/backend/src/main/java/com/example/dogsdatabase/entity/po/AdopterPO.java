package com.example.dogsdatabase.entity.po;

import lombok.Data;

@Data
public class AdopterPO {
    private String email;        // 主键 
    private String phoneNumber;
    private Integer householdSize; // 家庭人口数 
    private String firstname;
    private String lastname;
    private String street;
    private String city;
    private String state;
    private String zipcode;
    // getters/setters...
}