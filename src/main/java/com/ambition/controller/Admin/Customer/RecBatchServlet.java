package com.ambition.controller.Admin.Customer;
/**
 * @Author: ambition
 * @Date: 2018/10/30 16:12
 * @Version 1.0
 */

import com.ambition.service.Customer.MaintainService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 批量恢复控制层
 * @author: ambition
 * @create: 2018-10-30 16:12
 **/
@WebServlet(name = "RecBatchCustomerServlet",urlPatterns = "/recbatch")
public class RecBatchServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //设置编码
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //接受页面的值
        List<String> userIds = Arrays.asList(req.getParameter("userIds").split(","));

        //调用维护服务的批量恢复方法
        MaintainService maintainService=new MaintainService();
        maintainService.recBatch(userIds);
    }
}
