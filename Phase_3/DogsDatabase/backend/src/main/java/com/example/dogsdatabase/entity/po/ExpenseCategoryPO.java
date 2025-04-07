package com.example.dogsdatabase.entity.po;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ExpenseCategoryPO {
    private String category;     // 主键（如医疗/食品）
    // getters/setters...
}