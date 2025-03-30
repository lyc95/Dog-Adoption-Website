package com.example.dogsdatabase.entity.vo;

import com.example.dogsdatabase.entity.po.Sex;
import lombok.Data;

import java.time.LocalDate;

@Data
public class DogVO {
    private Integer dogID;       // 自增主键 
    private String name;
    private Sex sex;            // 枚举：Male/Female/Unknown
    private String breed;
    private LocalDate surrender_date; // 收容日期
    private Integer age_when_surrender; // 收容时年龄（≥0）
    private Boolean alteration_status; // 绝育状态（TINYINT映射）
    private String description; // 文字描述 
    private Boolean adoption_state; // 是否已被领养
    private Integer surrenderID; // 外键关联Surrender 
    // getters/setters...
}