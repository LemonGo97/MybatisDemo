package com.ambition.controller.Front;

import com.ambition.entity.Customer.Customer;
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
            //登陆成功
            Integer userId=customers.get(0).getUserId();
            String username=customers.get(0).getUsername();
            String phone=customers.get(0).getTelephone();
            String createdate= String.valueOf(customers.get(0).getCreatedate());
            String headimages=customers.get(0).getHeaderimages();
            LogTools.INFO("用户登陆控制器返回的信息=====>","用户："+username+" 登陆成功");
            HttpSession session=request.getSession();
            //把获取到的用户信息保存起来
            session.setAttribute("userId",userId);
            session.setAttribute("username",username);
            session.setAttribute("phone",phone);
            session.setAttribute("createdate",createdate);
            session.setAttribute("headimages",headimages);
            response.sendRedirect("/front/in/index.jsp");
        } else {
//            response.sendRedirect("/front/login.jsp");
            response.sendRedirect("/front/login.jsp?error=yes");
            //登陆失败
            LogTools.DEBUG("LoginServlet","用户登陆失败");
        }
    }


}
