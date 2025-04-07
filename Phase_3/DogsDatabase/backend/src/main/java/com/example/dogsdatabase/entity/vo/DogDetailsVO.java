package com.example.dogsdatabase.entity.vo;

import java.time.LocalDate;
import java.util.List;

import com.example.dogsdatabase.entity.po.ExpensePO;
import com.example.dogsdatabase.entity.po.Sex;

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
    private Sex sex;
    private Boolean alterationStatus;
    private Boolean adoptionState;
    private Integer currentAgeInMonth;
    private String description;
    private String microchipID;
    private LocalDate surrenderDate;
    private LocalDate adoptionDate;
    private String animalControlSurrenderIndicator;
    private List<ExpensePO> dogExpensesList;
}
