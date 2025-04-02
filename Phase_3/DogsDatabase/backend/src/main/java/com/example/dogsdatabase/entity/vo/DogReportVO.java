package com.example.dogsdatabase.entity.vo;

import java.math.BigDecimal;
import java.time.LocalDate;

import com.example.dogsdatabase.entity.po.Sex;
import com.example.dogsdatabase.entity.po.SurrenderType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor 
public class DogReportVO {
    private Integer dogID;
    private String breeds;
    private Sex sex;
    private Boolean alterationStatus;
    private String microchipID;
    private LocalDate surrenderDate;
    private LocalDate adoptedDate;
    private Integer daysInRescue;
    private SurrenderType surrenderType;
    private BigDecimal totalExpenses;
}
