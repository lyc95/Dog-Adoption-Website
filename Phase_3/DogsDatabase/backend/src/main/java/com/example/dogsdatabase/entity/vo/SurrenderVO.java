package com.example.dogsdatabase.entity.vo;

import com.example.dogsdatabase.entity.po.SurrenderType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class SurrenderVO {
    private Integer surrenderID;
    private String phoneNumber;
    private SurrenderType surrenderType = SurrenderType.UNKNOWN;

}
