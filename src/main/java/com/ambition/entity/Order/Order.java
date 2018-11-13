package com.ambition.entity.Order;
/**
 * @Author: ambition
 * @Date: 2018/11/9 23:27
 * @Version 1.0
 */

import com.ambition.entity.Shop.Shop;
import lombok.Data;

import java.util.Date;

/**
 * @program: MybatisDemo
 * @description: 订单表的实体类
 * @author: ambition
 * @create: 2018-11-09 23:27
 **/
@Data
public class Order {
    private Integer orderId;
    private String orderFile;
    private double money;
    private Integer shopId;
    private Integer customerId;
    private Integer orderState;
    private Date overDate;
    private Date createDate;
    private String address;
    private String ways;

    private Shop shopListResult;

}
