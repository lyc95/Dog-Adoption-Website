package com.example.dogsdatabase.entity.vo;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class BirthdayReportItemVO {
    private String firstname;
    private String lastname;
    private String email;
    private String isMilestone;
}
