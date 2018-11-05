package com.ambition.entity.Customer;
/**
 * @Author: ambition
 * @Date: 2018/10/28 19:07
 * @Version 1.0
 */

import lombok.Data;

/**
 * @program: MybatisDemo
 * @description: 用户地址表
 * @author: ambition
 * @create: 2018-10-28 19:07
 **/

@Data

public class CustomerAddress {
    private Integer recordId;
    private Integer customerId;
    private String address1;
    private String address2;
    private String address3;
}
