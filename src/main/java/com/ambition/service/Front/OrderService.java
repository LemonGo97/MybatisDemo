package com.ambition.service.Front;
/**
 * @Author: ambition
 * @Date: 2018/11/9 23:20
 * @Version 1.0
 */

import com.ambition.dao.OrderDao;
import com.ambition.entity.Order.Order;

import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 前台订单查询
 * @author: ambition
 * @create: 2018-11-09 23:20
 **/

public class OrderService {
    public List<Order> queryOrderList(String customerId){

        OrderDao orderDao=new OrderDao();
        List<Order> orders=orderDao.queryOrderList(Integer.valueOf(customerId));
        return orders;
    }

    /** 
     * @Description: 接收controller层 OrderDelServlet 传来的数据和指令，进行订单的删除操作
     * @Param:  String orderId
     * @return:  void
     * @Author: ambition 
     * @Date: 2018/11/10 
     */ 
    public void OrderDelOne(String orderId){

        OrderDao orderDao=new OrderDao();
        orderDao.OrderDelOne(orderId);
    }
}
