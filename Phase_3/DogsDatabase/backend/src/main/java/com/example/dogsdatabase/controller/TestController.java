package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.dao.AdminUserDao;
import com.example.dogsdatabase.dao.CasualUserDao;
import com.example.dogsdatabase.dao.VolunteerDao;
import com.example.dogsdatabase.entity.po.CasualUserPO;
import com.example.dogsdatabase.entity.po.VolunteerPO;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Title: TestController
 * @Author ttu
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/4/1 20:47
 * @description:
 */
@RestController
@RequestMapping("/api/test")
@RequiredArgsConstructor
public class TestController {
    private final VolunteerDao volunteerDao;

    @PostMapping("/insert")
    public void testInsert(@RequestBody VolunteerPO volunteerPO) {
        volunteerDao.insertVolunteer(volunteerPO);
    }

    @PutMapping("/update")
    public void testUpdate(@RequestBody VolunteerPO volunteerPO) {
        volunteerDao.updateVolunteer(volunteerPO);
    }

    @DeleteMapping("/delete")
    public void testDelete(String email) {
        volunteerDao.deleteVolunteer("user3@example.com");
    }

    @GetMapping("/get")
    public VolunteerPO testGet() {
        return volunteerDao.getVolunteerByEmail("user2@example.com");
    }
    @GetMapping("/getAll")
    public List<VolunteerPO> testGetAll() {
        return volunteerDao.getAllVolunteers();
    }
    @GetMapping("/getCount")
    public int testGetCount() {
        return volunteerDao.getVolunteerCount();
    }



}
