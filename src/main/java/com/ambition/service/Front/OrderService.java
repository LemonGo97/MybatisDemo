package com.ambition.service.Front;
/**
 * @Author: ambition
 * @Date: 2018/11/9 23:20
 * @Version 1.0
 */

import com.ambition.dao.OrderDao;
import com.ambition.dao.ShopDao;
import com.ambition.entity.Customer.CustomerAddress;
import com.ambition.entity.Order.Order;
import com.ambition.entity.Shop.Shop;
import com.ambition.util.LogTools;

import java.sql.Date;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 前台订单查询
 * @author: ambition
 * @create: 2018-11-09 23:20
 **/

public class OrderService {
    public List<Order> queryOrderList(String shopId,String customerId,String status,String limit) {
        OrderDao orderDao = new OrderDao();
        Integer shopIds=null;
        Integer limits=null;
        Integer customerIds=null;
        Integer statuses=null;
        if (shopId!=null&&!" ".equals(shopId)){
            shopIds=Integer.valueOf(shopId);
        }
        if (limit!=null&&!" ".equals(limit)){
            limits=Integer.valueOf(limit);
        }
        if (customerId!=null&&!" ".equals(customerId)){
            customerIds=Integer.valueOf(customerId);
        }
        if (status!=null&&!" ".equals(status)){
            statuses=Integer.valueOf(status);
        }
        LogTools.DEBUG(limit);
        List<Order> orders = orderDao.queryOrderList(shopIds,customerIds,statuses,limits);
        return orders;
    }

    /**
     * @Description: 接收controller层 OrderDelServlet 传来的数据和指令，进行订单的删除操作
     * @Param: String orderId
     * @return: void
     * @Author: ambition
     * @Date: 2018/11/10
     */
    public void OrderDelOne(String orderId) {

        OrderDao orderDao = new OrderDao();
        orderDao.OrderDelOne(orderId);
    }

    public List<CustomerAddress> queryCustomerAddress(String customerId) {
        OrderDao orderDao = new OrderDao();
        List<CustomerAddress> customerAddressList = orderDao.queryCustomerAddress(customerId);
        return customerAddressList;
    }

    public List<Shop> queryShopList() {
        ShopDao shopDao = new ShopDao();
        List<Shop> shopList = shopDao.queryShopList(null, null, null, null, null, null, 0);
        return shopList;
    }

    public Integer addOrder(String orderFile, double money, String shopId, String customerId, Integer orderState, String address, String ways) {
        OrderDao orderDao = new OrderDao();
        return orderDao.addOrder(orderFile, money, Integer.valueOf(shopId), Integer.valueOf(customerId), orderState, address, ways);
    }

    public double queryOrderMoney(String customerId) {
        OrderDao orderDao = new OrderDao();
        return orderDao.queryOrderMoney(Integer.valueOf(customerId));
    }

    public void changeOrderState(String orderId, Integer orderState, Date overDate) {

        OrderDao orderDao = new OrderDao();
        orderDao.changeOrderState(Integer.valueOf(orderId), orderState, overDate);

    }
}
