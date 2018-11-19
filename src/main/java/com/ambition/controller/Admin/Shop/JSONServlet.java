package com.ambition.controller.Admin.Shop;
/**
 * @Author: ambition
 * @Date: 2018/11/5 9:23
 * @Version 1.0
 */

import com.ambition.service.Shop.ListService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @program: MybatisDemo
 * @description: 商铺列表JSON数据传递到页面
 * @author: ambition
 * @create: 2018-11-05 09:23
 **/
@WebServlet("/jsonShop.ro")
public class JSONServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //设置编码
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //获取页面传过来的分页相关参数,其中，page表示第几页，limit表示每页多少数据
        String shopname=req.getParameter("shopname");
        String telephone=req.getParameter("telephone");
        String startdate= req.getParameter("startdate");
        String enddate= req.getParameter("enddate");
        String page= req.getParameter("page");
        String limit= req.getParameter("limit");
        String delFlag=req.getParameter("del");

        //调用Service层用户查询方法，在Service层格式化从数据库中取出的JSON数据之后，直接写出到servlet页面<jsonCustomer>
        ListService listService=new ListService();
        PrintWriter out = resp.getWriter();
        out.write(listService.queryShopList(shopname,startdate,enddate,telephone,page,limit,delFlag));

    }
}
