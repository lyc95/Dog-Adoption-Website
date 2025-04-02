package com.example.dogsdatabase.controller;
import java.time.YearMonth;
import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.vo.BirthdayReportItemVO;
import com.example.dogsdatabase.entity.vo.ExpenseAnalysisReportItemVO;
import com.example.dogsdatabase.entity.vo.LACDReportVO;
import com.example.dogsdatabase.entity.vo.MonthlyAdoptionReportItemVO;
import com.example.dogsdatabase.entity.vo.VolunteerLookUpItemVO;
import com.example.dogsdatabase.service.ReportService;

import lombok.RequiredArgsConstructor;


@RestController
@RequestMapping("/api/report")
@RequiredArgsConstructor
public class ReportController {

    private final ReportService reportService;

    @GetMapping("/LACDR")
    public Result getLACDReport()
    {
        try {
            /* Starting from current month */
            YearMonth yearMonth = YearMonth.now();
            List<LACDReportVO> report = reportService.getLACDReport(yearMonth);
            return Result.success(report);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @GetMapping("/MAR")
    public Result getMonthlyAdoptionReport()
    {
        try {
            List<MonthlyAdoptionReportItemVO> resultList = reportService.getMonthlyAdoptionReport();
            return Result.success(resultList);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @GetMapping("/EAR")
    public Result getExpenseAnalysisReport()
    {
        try {
            List<ExpenseAnalysisReportItemVO> resultList = reportService.getExpenseAnalysisReport();
            return Result.success(resultList);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    @GetMapping({"/volunteer", "/volunteer/{pattern}"})
    public Result getVolunteer(@PathVariable(required = false) Optional<String> pattern)
    {
        try {
            String searchPattern = pattern.orElse("");
            List<VolunteerLookUpItemVO> resultList = reportService.getVolunteers(searchPattern);
            return Result.success(resultList);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @GetMapping("/birthday/{year}/{month}")
    public Result getBirthday(@PathVariable int year, @PathVariable int month)
    {
        try {
            YearMonth yearMonth = YearMonth.of(year, month);
            List<BirthdayReportItemVO> resultList = reportService.getVolunteerBirthdayReport(yearMonth); 
            return Result.success(resultList);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
}
