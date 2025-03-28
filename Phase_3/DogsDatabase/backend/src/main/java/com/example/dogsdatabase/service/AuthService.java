package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.SystemConfigDao;
import com.example.dogsdatabase.dao.UserDao;
import com.example.dogsdatabase.entity.User;
import com.example.dogsdatabase.exception.AuthException;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Title: UserService
 * @Author ttu
 * @Package com.example.dogsdatabase.service
 * @Date 2025/3/28 17:01
 * @description:
 */
@Service
@RequiredArgsConstructor
public class AuthService {
    private final UserDao userDao;
    private final SystemConfigDao systemConfigDao;

    public User login(String email, String password) {
        User user = userDao.getUserByEmail(email);
        if (user == null) { // 用户不存在
            throw new AuthException("user don't exist!");
        }
        if (user.getPassword() != password) { // 密码错误
            throw new AuthException("wrong password!");
        }
        if(systemConfigDao.getSystemConfigByName("loggedUser") != null){ // 用户已经登录
            throw new AuthException("user already logged in!");
        }
        systemConfigDao.updateSystemConfig("loggedUser", email);
        return user;
    }

    public User logout() {
        User user = userDao.getUserByEmail(systemConfigDao.getSystemConfigByName("loggedUser").getConfig_value());
        if (user == null) { // 用户不存在
            throw new AuthException("user don't exist!");
        }
        systemConfigDao.updateSystemConfig("loggedUser", "");
        return user;
    }
}
