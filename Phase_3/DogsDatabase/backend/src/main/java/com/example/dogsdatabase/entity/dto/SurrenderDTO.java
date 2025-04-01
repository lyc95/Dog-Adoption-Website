package com.example.dogsdatabase.entity.dto;

import com.example.dogsdatabase.entity.po.SurrenderType;

import lombok.Data;
@Data
public class SurrenderDTO {
    private String phoneNumber;
    private SurrenderType surrenderType;
    
}
