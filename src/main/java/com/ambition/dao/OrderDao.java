package com.ambition.dao;
/**
 * @Author: ambition
 * @Date: 2018/11/10 1:00
 * @Version 1.0
 */

import com.ambition.db.DBAccess;
import com.ambition.entity.Customer.CustomerAddress;
import com.ambition.entity.Order.Order;
import com.ambition.entity.Shop.Shop;
import com.ambition.util.LogTools;
import org.apache.ibatis.session.SqlSession;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 订单类查询
 * @author: ambition
 * @create: 2018-11-10 01:00
 **/

public class OrderDao {
    public List<Order> queryOrderList(Integer shopId, Integer customerId, Integer status, Integer limits) {
        DBAccess dbAccess = new DBAccess();
        List<Order> ordersList = new ArrayList<Order>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Order order = new Order();
            if (status != null) {
                order.setOrderState(status);
            }
            if (shopId != null) {
                order.setShopId(shopId);
            }
            if (customerId != null) {
                order.setCustomerId(customerId);
            }
            if (limits != null) {
                order.setLimits(limits);
            }
            LogTools.DEBUG(order);
            ordersList = sqlSession.selectList("FrontCustomer.queryOrderList", order);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return ordersList;
    }

    /**
     * @Description: 接收service层 OrderService 传来的数据和指令，进行订单的删除操作
     * @Param: Integer orderId
     * @return: void
     * @Author: ambition
     * @Date: 2018/11/10
     */
    public void OrderDelOne(String orderId) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            sqlSession.update("FrontCustomer.OrderDelOne", orderId);
            sqlSession.commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }


    public List<CustomerAddress> queryCustomerAddress(String customerId) {
        DBAccess dbAccess = new DBAccess();
        List<CustomerAddress> customerAddressList = new ArrayList<CustomerAddress>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            customerAddressList = sqlSession.selectList("CustomerAddress.frontQueryAddress", customerId);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return customerAddressList;
    }

    public Integer addOrder(String orderFile, double money, Integer shopId, Integer customerId, Integer orderState, String address, String ways) {
        DBAccess dbAccess = new DBAccess();
        LogTools.show("OrderDao", "执行Mybatis语句成功");
        SqlSession sqlSession = null;
        Order order = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            order = new Order();
            order.setOrderFile(orderFile);
            order.setMoney(money);
            order.setShopId(shopId);
            order.setCustomerId(customerId);
            order.setOrderState(orderState);
            order.setCreateDate(new java.sql.Date(System.currentTimeMillis()));
            order.setAddress(address);
            order.setWays(ways);
            //通过sqlSession执行Sql语句
            sqlSession.insert("FrontCustomer.addOrder", order);
            sqlSession.commit();
            LogTools.show("OrderDao", "执行Mybatis语句成功");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("OrderDao", "执行Mybatis语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("OrderDao", "关闭Mybatis连接");
                sqlSession.close();
            }
        }
        return order.getOrderId();
    }

    public double queryOrderMoney(Integer OrderId) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        double money = 0;
        try {
            sqlSession = dbAccess.getSqlSession();
            money = sqlSession.selectOne("FrontCustomer.queryOrderMoney", OrderId);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return money;
    }

    public void changeOrderState(Integer orderId, Integer orderState, Date overDate) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            Order order = new Order();
            if (overDate != null) {
                order.setOrderId(orderId);
                order.setOrderState(orderState);
                order.setOverDate(overDate);
                sqlSession = dbAccess.getSqlSession();
                sqlSession.update("FrontCustomer.changeOrderState", order);
                sqlSession.commit();
            } else {
                order.setOrderId(orderId);
                order.setOrderState(orderState);
                sqlSession = dbAccess.getSqlSession();
                sqlSession.update("FrontCustomer.changeOrderState", order);
                sqlSession.commit();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

}
