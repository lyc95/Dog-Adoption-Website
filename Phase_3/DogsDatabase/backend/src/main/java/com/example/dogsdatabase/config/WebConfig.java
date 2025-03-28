package com.example.dogsdatabase.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Title: WebConfig
 * @Author ttu
 * @Package com.example.dogsdatabase.config
 * @Date 2025/3/28 22:22
 * @description:
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")//项目中的所有接口都支持跨域
                .allowedOriginPatterns("*")//所有地址都可以访问，也可以配置具体地址
                .allowCredentials(true)
                .allowedMethods("*")//"GET", "HEAD", "POST", "PUT", "DELETE", "OPTIONS"
                .maxAge(3600);// 跨域允许时间
    }
}
