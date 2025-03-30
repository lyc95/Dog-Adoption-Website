package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.dto.LoginDTO;
import com.example.dogsdatabase.entity.dto.UserDTO;
import com.example.dogsdatabase.entity.po.UserPO;
import com.example.dogsdatabase.entity.vo.LoginVO;
import com.example.dogsdatabase.exception.AuthException;
import com.example.dogsdatabase.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * @Title: TestController
 * @Author ttu
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/3/28 16:47
 * @description:
 */
@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {
    private final AuthService authService;

    @PostMapping("/login")
    public Result login(@RequestBody LoginDTO loginDTO){
        LoginVO loginVO;
        try{
            loginVO = authService.login(loginDTO);
        }catch (AuthException e){
            return Result.error(e.getCode(), e.getMsg());
        }

        return Result.success(loginVO);
    }

    @PostMapping("/logout")
    public Result logout(){
        try {
            authService.logout();
        }catch (AuthException e){
            return Result.error(e.getCode(), e.getMsg());
        }
        return Result.success();
    }

}
