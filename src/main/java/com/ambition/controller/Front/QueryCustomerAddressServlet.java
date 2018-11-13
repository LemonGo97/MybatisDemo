package com.ambition.controller.Front;

import com.ambition.entity.Customer.CustomerAddress;
import com.ambition.entity.Shop.Shop;
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
 * @Date: 2018/11/12 18:00
 * @Version 1.0
 */
@WebServlet("/queryAddress")
public class QueryCustomerAddressServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String customerId=request.getParameter("customerId");

        OrderService orderService=new OrderService();
        List<CustomerAddress> addressList=orderService.queryCustomerAddress(customerId);

        List<Shop> shopList=orderService.queryShopList();


        request.setAttribute("addresses",addressList);
        request.setAttribute("shopList",shopList);
        request.getRequestDispatcher("/front/in/begin.jsp").forward(request,response);
//        queryCustomerAddress
    }
}
