package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.ApprovedApplicationDao;
import com.example.dogsdatabase.entity.po.ApprovedApplicationPO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Title: ApprovedApplicationService
 * @Author ttu
 * @Package com.example.dogsdatabase.service
 * @Date 2025/4/8 22:48
 * @description:
 */
@Service
@RequiredArgsConstructor
public class ApprovedApplicationService {
    private final ApprovedApplicationDao approvedApplicationDao;
    public ApprovedApplicationPO findLatestApprovedApplicationByEmail(String email) {
        return approvedApplicationDao.findLatestApprovedApplicationByEmail(email);
    }

    public List<ApprovedApplicationPO> getApprovedApplication() {
        return approvedApplicationDao.getApprovedApplication();
    }

}
