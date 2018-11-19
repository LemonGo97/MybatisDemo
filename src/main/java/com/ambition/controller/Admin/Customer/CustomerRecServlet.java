package com.ambition.controller.Admin.Customer;
/**
 * @Author: ambition
 * @Date: 2018/10/29 19:21
 * @Version 1.0
 */


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @program: MybatisDemo
 * @description: 用户恢复页面展示项
 * @author: ambition
 * @create: 2018-10-29 19:21
 **/
@WebServlet("/customeRec.ro")
public class CustomerRecServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //更改编码格式为UTF-8
        req.setCharacterEncoding("UTF-8");

        //转发请求到页面
        req.getRequestDispatcher("/Admin/Customer/customeRecList.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
