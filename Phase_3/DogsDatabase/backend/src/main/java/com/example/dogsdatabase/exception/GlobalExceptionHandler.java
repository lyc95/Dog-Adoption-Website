package com.example.dogsdatabase.exception;

import com.example.dogsdatabase.common.Result;
import org.slf4j.Logger;

/**
 * @Title: GlobalExceptionHandler
 * @Author ttu
 * @Package com.example.dogsdatabase.exception
 * @Date 2025/3/28 19:42
 * @description:
 */
public class GlobalExceptionHandler {
    private static final Logger logger = org.slf4j.LoggerFactory.getLogger(GlobalExceptionHandler.class);

    public Result error(Exception e) {
        logger.error("[GlobalExceptionHandler] error: ", e);
        return Result.error("500", e.getMessage());
    }
}
