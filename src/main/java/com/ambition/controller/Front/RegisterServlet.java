package com.ambition.controller.Front;

import com.ambition.service.Customer.MaintainService;
import com.ambition.service.front.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author: ambition
 * @Date: 2018/11/9 10:05
 * @Version 1.0
 */
@WebServlet(name = "RegisterServlet",urlPatterns ="/customeRegister.do" )
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String telephone = request.getParameter("telephone");
        String password=request.getParameter("password");
        String username=request.getParameter("username");

        //调用维护服务的添加方法
        MaintainService maintainService=new MaintainService();
        maintainService.addCustomer(username,password,telephone);
        response.sendRedirect("/front/login.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String telephone = request.getParameter("telephone");
        response.setCharacterEncoding("utf-8");
        //传递信息  需要out对象
        LoginService loginService=new LoginService();
        boolean flag=loginService.CustomerRegQuery(telephone);
        PrintWriter out = response.getWriter();
        if(telephone==null||"".equals(telephone)){
            //用户名不能为空
            out.write("empty");
        }else if(flag){
            //用户名可用
            out.write("yep");
        }else{
            //用户名已存在
            out.write("nope");
        }
    }
}
