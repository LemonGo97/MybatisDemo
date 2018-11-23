package com.ambition.controller.Admin;

import com.ambition.entity.Admin.Admin;
import com.ambition.service.Admin.AdminListService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @Author: ambition
 * @Date: 2018/11/13 22:45
 * @Version 1.0
 */
@WebServlet("/adminLogin.loro")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String adminAccount = request.getParameter("username");
        String adminPas = request.getParameter("password");
        AdminListService adminListService=new AdminListService();
        List<Admin> adminList=adminListService.queryAdminList(adminAccount,adminPas);
        LogTools.DEBUG("管理员登陆===>用户名+密码",adminAccount+"+"+adminPas);
        LogTools.DEBUG("管理员登陆===>获取列表",adminList.size());
        if (adminList.size()>0&&adminList!=null){
            LogTools.DEBUG("AdminLoginServlet","登陆成功");
            HttpSession session=request.getSession();
            //把获取到的用户信息保存起来
            session.setAttribute("adminName",adminAccount);
            response.sendRedirect("/AdminIndex.ro");
        }else {
            response.sendRedirect("/Admin/login.jsp?error=yes");
            //登陆失败
            LogTools.DEBUG("LoginServlet","登陆失败");
        }
    }

}
