package com.ambition.controller.Front;

import com.ambition.entity.Customer.Customer;
import com.ambition.service.front.LoginService;
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
 * @Date: 2018/11/8 15:49
 * @Version 1.0
 */
@WebServlet(name = "CustomerLoginServlet", urlPatterns = "/customerlogin.do")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String telephone = request.getParameter("telephone");
        String password = request.getParameter("password");
        String isDel = request.getParameter("isDel");

        LoginService loginService=new LoginService();
        List<Customer> customers=loginService.CustomerLogin(telephone,password,isDel);


        if (customers!=null&&customers.size()!=0) {
            request.getRequestDispatcher("/front/index.jsp").forward(request, response);
            //登陆成功
            LogTools.DEBUG("LoginServlet","登陆成功");
        } else {
//            response.sendRedirect("/front/login.jsp");
            response.sendRedirect("/front/login.jsp?error=yes");
            //登陆失败
            LogTools.DEBUG("LoginServlet","登陆失败");
        }
    }

}
