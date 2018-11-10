package com.ambition.controller.Front;

import com.ambition.service.Front.LoginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: ambition
 * @Date: 2018/11/10 16:04
 * @Version 1.0
 */
@WebServlet("/customerInfoEdit")
public class InfoEditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //设置编码
        request.setCharacterEncoding("UTF-8");

        //获取前台数据
        String userId=request.getParameter("userId");
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String weibo=request.getParameter("weibo");
        String telephone=request.getParameter("telephone");
        String qq=request.getParameter("qq");
        String intro=request.getParameter("intro");

        //调用Service层服务
        LoginService loginService=new LoginService();
        loginService.customerInfoEdit(userId,username,email,weibo,telephone,qq,intro);
    }

}
