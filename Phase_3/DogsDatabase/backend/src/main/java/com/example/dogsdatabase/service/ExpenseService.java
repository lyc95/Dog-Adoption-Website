package com.example.dogsdatabase.service;
import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Service;

import com.example.dogsdatabase.dao.ExpenseDAO;
import com.example.dogsdatabase.entity.po.ExpensePO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ExpenseService {
    /* Expense Repository class */
    private final ExpenseDAO expenseDAO;
    
    public void checkDogId(Integer dogId) throws Exception
    {
        if (dogId < 0)
        {
            throw new Exception("Error: Invalid Dog Id");
        }
    }
    public void checkAmount(BigDecimal amount) throws Exception
    {
        if (amount.doubleValue() <= 0.0)
        {
            throw new Exception("Error: negative amount value");
        }
    }

    public List<ExpensePO> getAllExpensesByDogId(Integer dogId) throws Exception
    {
        checkDogId(dogId);
        return expenseDAO.getAllExpensesByDogId(dogId);
    }

    public void addExpense(ExpensePO expense) throws Exception
    {

        checkDogId(expense.getDogID());
        checkAmount(expense.getAmount());
        expenseDAO.addExpense(expense);
    }

    public Integer findExpensesByDogIdAndVendorAndExpenseDate(ExpensePO expense) throws Exception
    {
        checkDogId(expense.getDogID());
        if (expense.getVendorName() == null || expense.getExpenseDate() == null)
        {
            throw new Exception("Error: Empty Vendor Name or ExpenseDate");
        }
        return expenseDAO.findExpensesByDogIdAndVendorAndExpenseDate(expense);
    }
    public Integer deleteExpense(ExpensePO expense)
    {
        return expenseDAO.deleteExpense(expense);
    }
    public Integer updateExpense(ExpensePO expense) throws Exception
    {
        checkAmount(expense.getAmount());
        return expenseDAO.updateExpense(expense);
    }
}
