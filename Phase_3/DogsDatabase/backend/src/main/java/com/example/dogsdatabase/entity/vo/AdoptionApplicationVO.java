package com.example.dogsdatabase.entity.vo;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdoptionApplicationVO {

    private String email;
    private LocalDate date;
    private String phone_number;
    private Integer household_size;
    private String firstname;
    private String lastname;
    private String street;
    private String city;
    private String state;
    private String zipcode;
    
}
