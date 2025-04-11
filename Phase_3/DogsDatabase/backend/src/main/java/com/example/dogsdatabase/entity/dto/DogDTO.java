package com.example.dogsdatabase.entity.dto;

import java.time.LocalDate;
import java.util.List;

import com.example.dogsdatabase.entity.po.Sex;
import com.example.dogsdatabase.entity.po.SurrenderType;

import io.micrometer.common.lang.Nullable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DogDTO {
    private Integer age;
    private Boolean alterationStatus;
    private List<String> breed;
    @Nullable
    private String description;
    @Nullable
    private String manufactureName;
    @Nullable
    private String microchipID;
    private String name;
    @Nullable
    private String phonenumber;
    private Sex sex;
    private LocalDate surrenderDate;
    private SurrenderType surrenderType;
    
}
