package com.ambition.controller.Front;

import com.ambition.entity.Customer.Customer;
import com.ambition.service.Customer.ListService;
import com.ambition.service.Front.LoginService;
import com.ambition.util.LogTools;

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
 * @Date: 2018/11/10 15:11
 * @Version 1.0
 */
@WebServlet("/customerInfoQuery.us")
public class InfoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //设置编码格式
        request.setCharacterEncoding("UTF-8");
        String userId=request.getParameter("userId");
        String delFlag=request.getParameter("isDel");
        //调用Service层方法进行用户查询
        LoginService loginService=new LoginService();
        List<Customer> customers=loginService.customerInfoQuery(userId,delFlag);
        String headimages=customers.get(0).getHeaderimages();
        request.setAttribute("customerInfo",customers);
        HttpSession session=request.getSession();
        session.setAttribute("headimages",headimages);
        request.getRequestDispatcher("/front/in/personal.jsp").forward(request,response);
    }
}
