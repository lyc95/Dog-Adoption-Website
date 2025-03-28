package com.example.dogsdatabase.common;

import lombok.Data;

/**
 * @Title: Result
 * @Author ttu
 * @Package com.example.dogsdatabase.common
 * @Date 2025/3/28 16:52
 * @description:
 */
@Data
public class Result {
    private String code;
    private String msg;
    private Object data;


    public static Result success(){
        Result result = new Result();
        result.setCode("200");
        result.setMsg("success");
        return result;
    }
    public static Result success(Object data) {
        Result result = new Result();
        result.setCode("200");
        result.setMsg("success");
        result.setData(data);
        return result;
    }

    public static Result error( String msg) {
        Result result = new Result();
        result.setCode("500");
        result.setMsg(msg);
        return result;
    }

    public static Result error(String code, String msg) {
        Result result = new Result();
        result.setCode(code);
        result.setMsg(msg);
        return result;
    }

}
