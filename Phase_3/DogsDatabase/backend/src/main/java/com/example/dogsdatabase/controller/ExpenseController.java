package com.example.dogsdatabase.controller;
import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.po.ExpenseCategoryPO;
import com.example.dogsdatabase.entity.po.ExpensePO;
import com.example.dogsdatabase.service.ExpenseService;

/**
 * @Title: ExpenseController
 * @Author Youc
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/3/31
 * @description:
 */
@RestController
@RequestMapping("/api/expense")
public class ExpenseController {
    private final ExpenseService expenseService;
    
    /* Constructor */
    public ExpenseController(ExpenseService expenseService) {
        this.expenseService = expenseService;
    }

    /* Get all expenses */
    @GetMapping("/getall/{dogId}")
    public Result getAllExpensesByDogId(@PathVariable Integer dogId)
    {
        try
        {
            List<ExpensePO> allExpensesForDog= expenseService.getAllExpensesByDogId(dogId);
            return Result.success(allExpensesForDog);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    /* Add expense */
    @PostMapping("/add")
    public Result addExpenses(@RequestBody ExpensePO expense)
    {
        try 
        {
            expenseService.addExpense(expense);
            return Result.success();
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }
    /* Check expense */
    @PostMapping("/check")
    public Result findExpensesByDogIdAndVendorAndExpenseDate(@RequestBody ExpensePO expense)
    {
        try {
            Integer rows = expenseService.findExpensesByDogIdAndVendorAndExpenseDate(expense);
            return Result.success(rows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    /* Delete Expense */
    @DeleteMapping("/delete")
    public Result deleteExpense(@RequestBody ExpensePO expense)
    {
        try {
            Integer rows = expenseService.deleteExpense(expense);
            return Result.success(rows);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    /* Update Expense */
    @PutMapping("/update")
    public Result updateExpense(@RequestBody ExpensePO expense)
    {
        try {
            Integer rows = expenseService.updateExpense(expense);
            return Result.success(rows);
        } catch (Exception e) {
            return Result.success();
        }
    }

    @GetMapping({"/categoty/{pattern}", "/categoty"})
    public Result getExpenseCategory(@PathVariable(required = false) Optional<String> pattern)
    {
        try
        {
            String searchPattern = pattern.orElse("");
            List<ExpenseCategoryPO> list = expenseService.getExpenseCategories(searchPattern);
            return Result.success(list);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

    @GetMapping("/adoptionFee/{dogId}")
    public Result getAdoptionFeeByDogId(@PathVariable Integer dogId)
    {
        try{
            BigDecimal adoptionFee = expenseService.getAdoptionFeeByDogId(dogId);
            return Result.success(adoptionFee);
        } catch (Exception e) {
            return Result.error("500", e.getMessage());
        }
    }

}
