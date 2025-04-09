package com.example.dogsdatabase.entity.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BreedUpdateDTO {
    private Integer dogID;
    private List<String> updatedBreeds;
    
}
