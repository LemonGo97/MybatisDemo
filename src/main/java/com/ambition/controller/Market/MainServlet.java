package com.ambition.controller.Market;

import com.ambition.entity.Order.Order;
import com.ambition.entity.Shop.Shop;
import com.ambition.service.Front.OrderService;
import com.ambition.service.Shop.MaintainService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: ambition
 * @Date: 2018/11/16 18:18
 * @Version 1.0
 */
@WebServlet("/shopMainServlet")
public class MainServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String shopId=request.getParameter("shopId");
        String limit=request.getParameter("limit");
        OrderService orderService=new OrderService();
        List<Order> orderList=orderService.queryOrderList(shopId,null,null,limit);
        request.setAttribute("orderList",orderList);
        request.getRequestDispatcher("/Shop/in/main.jsp").forward(request,response);
    }
}
