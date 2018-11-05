package com.ambition.entity.Customer;
/**
 * @Author: ambition
 * @Date: 2018/10/28 19:11
 * @Version 1.0
 */

import lombok.Data;

/**
 * @program: MybatisDemo
 * @description: 用户状态表
 * @author: ambition
 * @create: 2018-10-28 19:11
 **/

@Data

public class CustomerState {
    private Integer recordId;
    private Integer customerId;
    private Integer customerState;
}
