package com.example.dogsdatabase.entity.po;

import lombok.Data;

import java.time.LocalDate;

@Data
public class DogPO {
    private Integer dogID;       // 自增主键 
    private String name;
    private Sex sex;            // 枚举：Male/Female/Unknown 
    private LocalDate surrenderDate; // 收容日期
    private Integer ageWhenSurrender; // 收容时年龄（≥0）
    private Boolean alterationStatus; // 绝育状态（TINYINT映射）
    private String description; // 文字描述 
    private Boolean adoptionState; // 是否已被领养 
    private Integer surrenderID; // 外键关联Surrender 
    // getters/setters...
}