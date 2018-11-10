package com.ambition.controller.Front;

import com.ambition.service.Front.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @description: 用户面的订单删除
 * @Author: ambition
 * @Date: 2018/11/10 10:09
 * @Version 1.0
 */
@WebServlet(name = "OrderDelServlet",urlPatterns = "/delOrderOne")
public class OrderDelServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码格式
        request.setCharacterEncoding("UTF-8");
        //接受前台传值
        String orderId=request.getParameter("orderId");

        //调用维护方法进行订单的删除，指向service层->front
        OrderService orderService=new OrderService();
        orderService.OrderDelOne(orderId);
    }
}
