package com.ambition.controller.Market;

import com.ambition.entity.Order.Order;
import com.ambition.service.Front.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: ambition
 * @Date: 2018/11/17 14:47
 * @Version 1.0
 */
@WebServlet("/ShopOrderServlet.bu")
public class OrderServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String shopId = request.getParameter("shopId");
        OrderService orderService = new OrderService();
        List<Order> orderList = orderService.queryOrderList(shopId, null, null, null);
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("/Shop/in/Order.jsp").forward(request, response);
    }
}
