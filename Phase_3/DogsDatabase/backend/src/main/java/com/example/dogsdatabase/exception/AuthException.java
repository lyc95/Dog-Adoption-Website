package com.example.dogsdatabase.exception;

import lombok.Data;

/**
 * @Title: AuthException
 * @Author ttu
 * @Package com.example.dogsdatabase
 * @Date 2025/3/28 19:04
 * @description:
 */
@Data
public class AuthException extends RuntimeException{
    private String code;
    private String msg;

    public AuthException(String code, String msg){
        this.code = code;
        this.msg = msg;
    }

    public AuthException(String msg){
        this.code = "500";
        this.msg = msg;
    }

    public AuthException(String msg, Throwable cause){
        super(msg, cause);
    }
    public AuthException(Throwable cause){
        super(cause);
    }

}
