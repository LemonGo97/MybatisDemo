package com.ambition.dao;
/**
 * @Author: ambition
 * @Date: 2018/11/10 1:00
 * @Version 1.0
 */

import com.ambition.db.DBAccess;
import com.ambition.entity.Order.Order;
import com.ambition.util.LogTools;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 订单类查询
 * @author: ambition
 * @create: 2018-11-10 01:00
 **/

public class OrderDao {
    public List<Order> queryOrderList(Integer customerId){
        DBAccess dbAccess = new DBAccess();
        List<Order> ordersList = new ArrayList<Order>();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            Order order=new Order();
            order.setCustomerId(customerId);
            ordersList=sqlSession.selectList("FrontCustomer.queryOrderList",order);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return ordersList;
    }

    /** 
     * @Description:  接收service层 OrderService 传来的数据和指令，进行订单的删除操作
     * @Param:  Integer orderId
     * @return:  void
     * @Author: ambition 
     * @Date: 2018/11/10 
     */ 
    public void OrderDelOne(String orderId) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            sqlSession.update("FrontCustomer.OrderDelOne",orderId);
            sqlSession.commit();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }
}
