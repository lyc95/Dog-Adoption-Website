package com.example.dogsdatabase.entity.vo;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import com.example.dogsdatabase.entity.po.Sex;
import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor 
public class DogDetailsVO {
    private Integer dogID;
    private String name;
    private String breed;
    private String surrenderPhonenumber;
    private Sex sex;
    private Boolean alterationStatus;
    private Boolean adoptionState;
    private Integer currentAgeInMonth;
    private String description;
    private String microchipID;
    private LocalDate surrenderDate;
    private LocalDate adoptionDate;
    private String animalControlSurrenderIndicator;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "0.00")
    private BigDecimal grandTotal;
    private List<ExpensePerCategoryVO> dogExpensesList;
}
