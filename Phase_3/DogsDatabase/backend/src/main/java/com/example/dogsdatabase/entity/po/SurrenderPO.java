package com.example.dogsdatabase.entity.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SurrenderPO {
    private Integer surrenderID; // 自增主键 
    private String  phoneNumber;
    // getters/setters...
    public SurrenderPO(String phoneNumber)
    {
        this.phoneNumber = phoneNumber;
        surrenderID = null;
    }
}