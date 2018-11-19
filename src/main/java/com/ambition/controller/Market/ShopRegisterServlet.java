package com.ambition.controller.Market;

import com.ambition.service.Front.LoginService;
import com.ambition.service.Shop.MaintainService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author: ambition
 * @Date: 2018/11/19 14:09
 * @Version 1.0
 */
@WebServlet("/shopRegister.lobu")
public class ShopRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String ShopName=request.getParameter("shopName");
        String Telephone=request.getParameter("telephone");
        String password=request.getParameter("password");

        //调用维护服务的添加方法
        MaintainService maintainService=new MaintainService();
        maintainService.addShop(ShopName,null,password,Telephone,null);
        response.sendRedirect("/Shop/login.jsp");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String telephone = request.getParameter("telephone");
        response.setCharacterEncoding("utf-8");
        //传递信息  需要out对象
        LoginService loginService=new LoginService();
        boolean flag=loginService.ShopRegQuery(telephone);
        PrintWriter out = response.getWriter();
        if(telephone==null||"".equals(telephone.trim())){
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
