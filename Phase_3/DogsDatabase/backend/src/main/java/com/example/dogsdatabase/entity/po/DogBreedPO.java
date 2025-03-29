package com.example.dogsdatabase.entity.po;

import lombok.Data;

@Data
public class DogBreedPO {
    private Integer dogID;       // 联合主键 
    private String breedname;    // 联合主键 
    // getters/setters...
}