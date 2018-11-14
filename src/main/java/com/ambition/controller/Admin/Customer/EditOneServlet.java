package com.ambition.controller.Admin.Customer;
/**
 * @Author: ambition
 * @Date: 2018/11/4 1:20
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
 * @description: 单个用户信息维护
 * @author: ambition
 * @create: 2018-11-04 01:20
 **/
@WebServlet(name = "EditOneCustomerServlet",urlPatterns = "/editCustomer")
public class EditOneServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LogTools.show("EditOneServlet","doPost");

        //设置编码
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //接受页面的值
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String telephone=req.getParameter("telephone");
        String userId=req.getParameter("userId");

        //调用维护服务的添加方法
        MaintainService maintainService=new MaintainService();
        maintainService.editCustomer(username,password,telephone,userId);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
