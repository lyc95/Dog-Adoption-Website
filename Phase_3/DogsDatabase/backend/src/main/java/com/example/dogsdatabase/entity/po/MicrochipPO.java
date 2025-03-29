package com.example.dogsdatabase.entity.po;

import lombok.Data;

@Data
public class MicrochipPO {
    private String microchipID;  // 主键 
    private Integer dogID;        // 外键关联Dog 
    private String manufactureName; // 外键关联厂商 
    // getters/setters...
}