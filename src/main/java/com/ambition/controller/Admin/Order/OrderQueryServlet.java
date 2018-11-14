package com.ambition.controller.Admin.Order;
/**
 * @Author: ambition
 * @Date: 2018/11/9 19:29
 * @Version 1.0
 */

import com.ambition.entity.Order.Order;
import com.ambition.service.Front.OrderService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 用户面的订单查询记录
 * @author: ambition
 * @create: 2018-11-09 19:29
 **/
@WebServlet("/adminQueryOrder")
public class OrderQueryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        List<Order> orders=null;
        String status=req.getParameter("status");
        LogTools.DEBUG("status==========>",status);

        OrderService orderService=new OrderService();
        if (status!=null||!status.equals("9")){
            orders = orderService.queryOrderList(null,status);
            LogTools.DEBUG("orders.size()==========>",orders.size());
            req.setAttribute("orders",orders);
            req.getRequestDispatcher("/Admin/Order/OrderList.jsp").forward(req,resp);
        }else{
            orders = orderService.queryOrderList(null,null);
            req.setAttribute("orders",orders);
            req.getRequestDispatcher("/Admin/Order/OrderList.jsp").forward(req,resp);
        }

        //调用Service层用户查询方法，在Service层格式化从数据库中取出的JSON数据之后，直接写出到servlet页面<jsonCustomer>
    }
}
