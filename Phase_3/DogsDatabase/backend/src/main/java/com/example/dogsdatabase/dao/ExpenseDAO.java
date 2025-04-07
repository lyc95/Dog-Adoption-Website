package com.example.dogsdatabase.dao;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.dogsdatabase.entity.po.ExpenseCategoryPO;
import com.example.dogsdatabase.entity.po.ExpensePO;
import com.example.dogsdatabase.entity.vo.ExpenseAnalysisReportItemVO;
import com.example.dogsdatabase.entity.vo.ExpensePerCategoryVO;

import lombok.RequiredArgsConstructor;


@Repository
@RequiredArgsConstructor
public class ExpenseDAO {

    private final JdbcTemplate jdbcTemplate;

    public List<ExpensePO> getAllExpensesByDogId(Integer dogId)
    {
        String sql = "SELECT * FROM Expense WHERE dogID = " + dogId;
        return jdbcTemplate.query(sql, (rs, rowNum) -> new ExpensePO(
            rs.getInt("dogID"),
            rs.getString("vendor_name"),
            rs.getString("category"),
            rs.getDate("expense_date").toLocalDate(),
            rs.getBigDecimal("amount")
        ));
    }

    public List<ExpensePerCategoryVO> getExpensesPerCategoryDogId(Integer dogId)
    {
        String sql = """
        SELECT 
        category, SUM(amount) as total_expenses
        FROM expense
        WHERE dogID = ?
        GROUP BY category;
        """;
        return jdbcTemplate.query(sql, (rs, rowNum) -> new ExpensePerCategoryVO(
            rs.getString("category"),
            rs.getBigDecimal("total_expenses")
        ), dogId);
    }

    public BigDecimal getTotalExpensesByDogId(Integer dogId)
    {
        String sql = "SELECT SUM(amount) as total_expenses FROM Expense WHERE dogID = ?";
        BigDecimal totalExpenses = jdbcTemplate.queryForObject(sql, BigDecimal.class, dogId);
        return totalExpenses != null ? totalExpenses : BigDecimal.ZERO;
    }
    
    public void addExpense(ExpensePO expense)
    {
        String sql = "INSERT INTO Expense (dogID, vendor_name, category, expense_date, amount) VALUES (?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, 
            expense.getDogID(), 
            expense.getVendorName(), 
            expense.getCategory(), 
            expense.getExpenseDate(), 
            expense.getAmount()
        );
    }

    public Integer findExpensesByDogIdAndVendorAndExpenseDate(ExpensePO expense)
    {
        String sql = "SELECT COUNT(*) FROM Expense WHERE dogID = ? AND vendor_name = ? AND expense_date = ?";
        Integer rows = jdbcTemplate.queryForObject(sql, Integer.class, 
            expense.getDogID(), 
            expense.getVendorName(), 
            Date.valueOf(expense.getExpenseDate())  // Convert LocalDate to SQL Date
        );
        return rows;
    }
   public Integer deleteExpense(ExpensePO expense)
   {
        String sql = "DELETE FROM Expense WHERE dogID = ? AND vendor_name = ? AND expense_date = ? AND category = ?";
        Integer rows = jdbcTemplate.update(sql, 
            expense.getDogID(), 
            expense.getVendorName(), 
            Date.valueOf(expense.getExpenseDate()), 
            expense.getCategory()
        );
        // Return affected rows
        return rows;
   }
   public Integer updateExpense(ExpensePO expense)
   {
        String sql = "Update Expense SET amount = ? WHERE dogID = ? AND vendor_name = ? AND expense_date = ? AND category = ?";
        Integer rows = jdbcTemplate.update(sql,
            expense.getAmount(),
            expense.getDogID(), 
            expense.getVendorName(), 
            Date.valueOf(expense.getExpenseDate()), 
            expense.getCategory()
        );
        // Return affected rows
        return rows;
   }

    public List<ExpenseAnalysisReportItemVO> getExpenseAnalysisReport() 
    {
        String sql = "SELECT vendor_name, SUM(amount) AS total_spent FROM Expense GROUP BY vendor_name ORDER BY total_spent DESC";
        List<ExpenseAnalysisReportItemVO> resultList = jdbcTemplate.query(sql, (rs, rowNum) -> new ExpenseAnalysisReportItemVO(
            rs.getString("vendor_name"),
            rs.getBigDecimal("total_spent")
        ));
        return resultList;
    }

    public List<ExpenseCategoryPO> getExpenseCategories(String pattern)
    {
        String sql = """
        SELECT category FROM expensecategory WHERE LOWER(category) LIKE LOWER(?);
        """;
        return jdbcTemplate.query(sql, (rs, rowNum) -> new ExpenseCategoryPO(
            rs.getString("category")
        ),
        "%" + pattern + "%"
        );
    }

}
