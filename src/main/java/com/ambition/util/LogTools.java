package com.ambition.util;
/**
 * @Author: ambition
 * @Date: 2018/10/30 14:44
 * @Version 1.0
 */

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * @program: MybatisDemo
 * @description: 对log4j2进行封装，使用静态类调用
 * @author: ambition
 * @create: 2018-10-30 14:44
 **/

public class LogTools {
    public static void show(String tag,Object msg){
        Logger logger = LogManager.getLogger(tag);
        logger.info(msg);
    }
    public static void INFO(String tag,Object msg){
        Logger logger = LogManager.getLogger(tag);
        logger.info(msg);
    }
    public static void ERROR(String tag,Object msg){
        Logger logger = LogManager.getLogger(tag);
        logger.error(msg);
    }
    public static void DEBUG(String tag,Object msg){
        Logger logger = LogManager.getLogger(tag);
        logger.debug(msg);
    }
    public static void DEBUG(Object msg){
        Logger logger = LogManager.getLogger("DEFAULT");
        logger.debug(msg);
    }
    public static void INFO(Object msg){
        Logger logger = LogManager.getLogger("DEFAULT");
        logger.info(msg);
    }
    public static void ERROR(Object msg){
        Logger logger = LogManager.getLogger("DEFAULT");
        logger.error(msg);
    }

}
