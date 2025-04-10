package com.example.dogsdatabase.entity.po;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

/**
 * @Title: AdoptionDetailsPO
 * @Author ttu
 * @Package com.example.dogsdatabase.entity.po
 * @Date 2025/3/29 20:39
 * @description:
 */
@Data
public class AdoptionDetailsPO {
    private Integer dogID;
    private String email;
    private LocalDate application_date;
    private LocalDate adoption_date;
    private BigDecimal adoption_fee;
}
