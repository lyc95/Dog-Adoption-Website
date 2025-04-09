package com.example.dogsdatabase.service;
import java.math.BigDecimal;
import java.util.List;

import com.example.dogsdatabase.dao.DogDao;
import com.example.dogsdatabase.dao.SurrenderDAO;
import com.example.dogsdatabase.entity.po.DogPO;
import com.example.dogsdatabase.entity.po.SurrenderType;
import com.example.dogsdatabase.entity.vo.SurrenderVO;
import org.springframework.stereotype.Service;

import com.example.dogsdatabase.dao.ExpenseDAO;
import com.example.dogsdatabase.entity.po.ExpenseCategoryPO;
import com.example.dogsdatabase.entity.po.ExpensePO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ExpenseService {
    /* Expense Repository class */
    private final ExpenseDAO expenseDAO;
    private final DogDao dogDao;
    private final SurrenderDAO surrenderDAO;
    
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

    public BigDecimal getAdoptionFeeByDogId(Integer dogId) throws Exception {
        List<ExpensePO> expenses = getAllExpensesByDogId(dogId);
        //计算expenses中amount的总和
        BigDecimal total = new BigDecimal(0);
        if(expenses == null){
            return total;
        }
        for(ExpensePO expense : expenses){
            total = total.add(expense.getAmount());
        }
        DogPO dogPO = dogDao.getDogByID(dogId);
        Integer surrenderID = dogPO.getSurrenderID();
        SurrenderVO surrender = surrenderDAO.getSurrender(surrenderID);
        if (surrender.getSurrenderType() == SurrenderType.LOCALANIMALCONTROLDEPARTMENT){
            return total.multiply(new BigDecimal("0.25"));
        } else if (surrender.getSurrenderType() == SurrenderType.INDIVIDUAL){
            return total.multiply(new BigDecimal("1.25"));
        } else {
            return total;
        }

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
    public List<ExpenseCategoryPO> getExpenseCategories(String pattern)
    {
        return expenseDAO.getExpenseCategories(pattern);
    }
}
