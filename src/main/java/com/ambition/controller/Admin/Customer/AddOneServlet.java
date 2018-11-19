package com.ambition.controller.Admin.Customer;
/**
 * @Author: ambition
 * @Date: 2018/10/30 22:42
 * @Version 1.0
 */

import com.ambition.service.Customer.MaintainService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @program: MybatisDemo
 * @description: 增加单个用户
 * @author: ambition
 * @create: 2018-10-30 22:42
 **/
@WebServlet("/addOnecustomer.ro")
public class AddOneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LogTools.show("AddOneServlet","doGet");
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        LogTools.show("AddOneServlet","doPost");

        //设置编码
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //接受页面的值
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String telephone=req.getParameter("telephone");


        //调用维护服务的添加方法
        MaintainService maintainService=new MaintainService();
        maintainService.addCustomer(username,password,telephone);
    }
}
