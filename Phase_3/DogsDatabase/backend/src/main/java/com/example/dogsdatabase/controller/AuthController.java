package com.example.dogsdatabase.controller;

import com.example.dogsdatabase.common.Result;
import com.example.dogsdatabase.entity.User;
import com.example.dogsdatabase.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Title: TestController
 * @Author ttu
 * @Package com.example.dogsdatabase.controller
 * @Date 2025/3/28 16:47
 * @description:
 */
@RestController()
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {
    private final AuthService authService;

    @PostMapping("/login")
    public Result login(String email, String password){
        User user = authService.login(email, password);
        return Result.success(user);
    }

    @PostMapping("/logout")
    public Result logout(String email, String password){
        User user = authService.logout();
        return Result.success(user);
    }

}
