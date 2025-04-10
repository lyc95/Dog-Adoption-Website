package com.example.dogsdatabase.service;

import com.example.dogsdatabase.dao.SystemConfigDao;
import com.example.dogsdatabase.dao.UserDao;
import com.example.dogsdatabase.entity.dto.LoginDTO;
import com.example.dogsdatabase.entity.dto.UserDTO;
import com.example.dogsdatabase.entity.po.UserPO;
import com.example.dogsdatabase.entity.vo.LoginVO;
import com.example.dogsdatabase.exception.AuthException;
import io.micrometer.common.util.StringUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.Period;

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
//        if (user == null) { // 用户不存在
//            throw new AuthException("User don't exist!");
//        }
        if (user == null || !user.getPassword().equals(loginDTO.getPassword())) { // 密码错误
            throw new AuthException("Wrong account or password!");
        }

        String loggedUser = systemConfigDao.getSystemConfigByName("loggedUser").getConfig_value();
        if(user.getUser_type().toString().equals("VOLUNTEER")){ // 用户是VOLUNTEER
            if(loggedUser != null && !loggedUser.isEmpty()){ //已有VOLUNTEER用户登陆
                throw new AuthException("Already have users logged in!");
            }
            systemConfigDao.updateSystemConfig("loggedUser", loginDTO.getEmail());
        }



        return buildLoginVO(user);
    }

    public UserPO logout() {
        String loggedUser = systemConfigDao.getSystemConfigByName("loggedUser").getConfig_value();
        UserPO userPo = userDao.getUserByEmail(loggedUser);
        if(userPo.getUser_type().toString().equals("VOLUNTEER")) { // 用户是VOLUNTEER
            systemConfigDao.updateSystemConfig("loggedUser", null);
        }
        return userPo;
    }

    private LoginVO buildLoginVO(UserPO user) {
        String userType = user.getUser_type().toString();
        int age = calculateAge(user.getBirthday());

        return new LoginVO(user.getEmail(), userType, age);
    }

    public int calculateAge(LocalDate birthday) {
        if (birthday == null) {
            return 0; // 或抛出异常，取决于业务需求
        }
        LocalDate today = LocalDate.now();
        return Period.between(birthday,  today).getYears();
    }
}
