package com.ambition.entity.Admin;
/**
 * @Author: ambition
 * @Date: 2018/11/13 22:48
 * @Version 1.0
 */

import lombok.Data;

/**
 * @program: MybatisDemo
 * @description: 超级用户
 * @author: ambition
 * @create: 2018-11-13 22:48
 **/
@Data
public class Admin {
    private Integer id;
    private String account;
    private String password;
}
