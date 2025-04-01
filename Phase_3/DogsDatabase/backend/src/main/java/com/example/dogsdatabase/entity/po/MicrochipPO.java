package com.example.dogsdatabase.entity.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MicrochipPO {
    private String microchipID;  // 主键 
    private Integer dogID;        // 外键关联Dog 
    private String manufactureName; // 外键关联厂商 
    // getters/setters...
}