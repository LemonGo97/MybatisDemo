package com.ambition.controller.Front;

import com.ambition.entity.Customer.Customer;
import com.ambition.service.Front.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @Author: ambition
 * @Date: 2018/11/15 14:05
 * @Version 1.0
 */
@WebServlet("/FrCustomer.us")
public class FrCustomerServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码格式
        HttpSession session=request.getSession();
        request.setCharacterEncoding("UTF-8");       //调用Service层方法进行用户查询
        LoginService loginService=new LoginService();
        List<Customer> customers=loginService.customerInfoQuery(String.valueOf(session.getAttribute("userId")),"0");
        String headimages=customers.get(0).getHeaderimages();
        session.setAttribute("headimages",headimages);
        request.getRequestDispatcher("/front/in/index.jsp").forward(request,response);
    }

}
