package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.SystemConfigDao;
import com.example.dogsdatabase.dao.UserDao;
import com.example.dogsdatabase.entity.dto.LoginDTO;
import com.example.dogsdatabase.entity.dto.UserDTO;
import com.example.dogsdatabase.entity.po.UserPO;
import com.example.dogsdatabase.entity.vo.LoginVO;
import com.example.dogsdatabase.exception.AuthException;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.JdbcTemplate;
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

    public LoginVO login(LoginDTO loginDTO) {
        UserPO user = userDao.getUserByEmail(loginDTO.getEmail());
        if (user == null) { // 用户不存在
            throw new AuthException("user don't exist!");
        }
        if (!user.getPassword().equals(loginDTO.getPassword())) { // 密码错误
            throw new AuthException("wrong password!");
        }
        if(!systemConfigDao.getSystemConfigByName("loggedUser").getConfig_value().equals("")){ // 用户已经登录
            throw new AuthException("user already logged in!");
        }
        systemConfigDao.updateSystemConfig("loggedUser", loginDTO.getEmail());

        return buildLoginVO(user);
    }

    public UserPO logout() {
        UserPO userPo = userDao.getUserByEmail(systemConfigDao.getSystemConfigByName("loggedUser").getConfig_value());
        if (userPo == null) { // 用户不存在
            throw new AuthException("user don't exist!");
        }
        systemConfigDao.updateSystemConfig("loggedUser", "");
        return userPo;
    }

    private LoginVO buildLoginVO(UserPO user) {
        String userType = userDao.getUserType(user.getEmail());

        return new LoginVO(user.getEmail(), userType);
    }
}
