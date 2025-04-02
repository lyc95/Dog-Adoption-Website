package com.example.dogsdatabase.service;

import java.math.BigDecimal;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.dogsdatabase.entity.vo.DogReportVO;
import com.example.dogsdatabase.entity.vo.LACDReportVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReportService {

    private final DogService dogService;
    public List<YearMonth> getPastSixMonthWithCurrentMonth(YearMonth yearMonth)
    {
        List<YearMonth> pastSixMonths = new ArrayList<>();
        for (int i = 0; i <= 6; i++)
        {
            pastSixMonths.add(yearMonth.minusMonths(i));
        }
        return pastSixMonths;
    }

    public List<LACDReportVO> getLACDReport(YearMonth yearMonth) 
    {
        /* Get past six month + current month */
        List<YearMonth> getPastSixMonthWithCurrentMonth = getPastSixMonthWithCurrentMonth(yearMonth);
        List<LACDReportVO> report = new ArrayList<>();
        /*Generate the report item for each month */
        for (YearMonth currYearMonth : getPastSixMonthWithCurrentMonth)
        {
            LACDReportVO reportItemForCurrentMonth = new LACDReportVO();
            /* Set current Month  */
            reportItemForCurrentMonth.setYearMonth(currYearMonth);

            /* Search for dogs Surrendered by LACD in current month*/
            List<DogReportVO> dogsSurrenderedByLACD = dogService.getAllDogsSurrenderedByLACDInMonth(currYearMonth);
            reportItemForCurrentMonth.setDogsSurrenderedByLACDList(dogsSurrenderedByLACD);
            reportItemForCurrentMonth.setDogsSurrenderedByLACD(dogsSurrenderedByLACD.size());

            /* Search for dogs adopted in that month that were in the rescue for 60 or more days*/
            List<DogReportVO> dogsAdoptedAfter60days = dogService.getAllDogsdogsAdoptedAfter60DaysInMonth(currYearMonth);
            reportItemForCurrentMonth.setDogsAdoptedAfter60Dayslist(dogsAdoptedAfter60days);
            reportItemForCurrentMonth.setDogsAdoptedAfter60Days(dogsAdoptedAfter60days.size());

            /* Search for the expenses for all dogs adopted that month*/
            List<DogReportVO> dogsAdoptedWithExpenses = dogService.getAllDogsAdoptedWithExpensesInMonth(currYearMonth);
            reportItemForCurrentMonth.setDogsAdoptedExpensesList(dogsAdoptedWithExpenses);
            reportItemForCurrentMonth.setDogsAdoptedTotalExpenses(dogsAdoptedWithExpenses.stream()
                        .map(DogReportVO::getTotalExpenses)  // Extracts the 'amount' field
                        .reduce(BigDecimal.ZERO, BigDecimal::add) // Sums all values
            );

            /* Add into report */
            report.add(reportItemForCurrentMonth);
        }
        return report;
    }
    
}
