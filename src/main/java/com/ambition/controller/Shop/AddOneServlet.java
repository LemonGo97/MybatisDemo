package com.ambition.controller.Shop;
/**
 * @Author: ambition
 * @Date: 2018/10/30 22:42
 * @Version 1.0
 */

import com.ambition.service.Shop.MaintainService;
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
@WebServlet(name = "AddOneShopServlet",urlPatterns = "/addOneShop")
public class AddOneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LogTools.show("AddOneShopServlet","doGet");
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        LogTools.show("AddOneShopServlet","doPost");

        //设置编码
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //接受页面的值
        String shopname=req.getParameter("shopname");
        String bussinessman=req.getParameter("businessMan");
        String password=req.getParameter("password");
        String telephone=req.getParameter("telephone");
        String shopaddress=req.getParameter("shopaddress");


        //调用维护服务的添加方法
        MaintainService maintainService=new MaintainService();
        maintainService.addShop(shopname,bussinessman,password,telephone,shopaddress);
    }
}
