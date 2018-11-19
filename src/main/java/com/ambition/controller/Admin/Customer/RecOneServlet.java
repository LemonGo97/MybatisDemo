package com.ambition.controller.Admin.Customer;
/**
 * @Author: ambition
 * @Date: 2018/10/30 15:19
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
 * @description: 恢复单条用户数据
 * @author: ambition
 * @create: 2018-10-30 15:19
 **/
@WebServlet("/recone.ro")
public class RecOneServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        LogTools.show("RecOneServlet","doGet");

        //设置编码
        req.setCharacterEncoding("UTF-8");

        //接受页面的值
        String userId=req.getParameter("userId");

        //调用维护服务的恢复单个用户方法
        MaintainService maintainService=new MaintainService();
        maintainService.recOne(userId);
        LogTools.show("RecOneServlet",userId);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
