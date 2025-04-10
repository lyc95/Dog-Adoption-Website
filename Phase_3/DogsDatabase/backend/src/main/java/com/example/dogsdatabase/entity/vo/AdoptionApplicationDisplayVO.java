package com.example.dogsdatabase.entity.vo;

import java.time.LocalDate;

import com.example.dogsdatabase.entity.po.ApplicationState;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdoptionApplicationDisplayVO {

    private String email;
    private LocalDate application_date;
    private LocalDate date_approved;
    private LocalDate date_rejected;
    private ApplicationState application_state;
    private String phone_number;
    private Integer household_size;
    private String firstname;
    private String lastname;
    private String street;
    private String city;
    private String state;
    private String zipcode;
}
