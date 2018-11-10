package com.ambition.controller.Customer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.ambition.entity.Customer.Customer;
import com.ambition.service.Customer.ListService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @Author: ambition
 * @Date: 2018/11/1 0:52
 * @Version 1.0
 */
@WebServlet(name = "CustomerJSONServlet",urlPatterns = "/jsonCustomer")
public class JSONServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        //获取页面传过来的分页相关参数,其中，page表示第几页，limit表示每页多少数据
        String username=request.getParameter("username");
        String telephone=request.getParameter("telephone");
        String startdate= request.getParameter("startdate");
        String enddate= request.getParameter("enddate");
        String page= request.getParameter("page");
        String limit= request.getParameter("limit");
        String delFlag=request.getParameter("del");

        //调用Service层用户查询方法，在Service层格式化从数据库中取出的JSON数据之后，直接写出到servlet页面<jsonCustomer>
        ListService listService=new ListService();
        PrintWriter out = response.getWriter();
        out.write(listService.queryCustomerList(username,startdate,enddate,telephone,page,limit,delFlag));

    }
}
