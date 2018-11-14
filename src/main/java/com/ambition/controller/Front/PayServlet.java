package com.ambition.controller.Front;

import com.ambition.service.Front.OrderService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author: ambition
 * @Date: 2018/11/13 15:15
 * @Version 1.0
 */
@WebServlet("/payServlet")
public class PayServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String orderId=request.getParameter("orderId");
        String operate=request.getParameter("operate");
        LogTools.INFO("哈哈哈哈啊哈哈哈哈哈哈，我找的即使你",operate);
        OrderService orderService=new OrderService();
        if (operate==null){
            double money=orderService.queryOrderMoney(orderId);
            request.setAttribute("money",money);
            request.setAttribute("orderId",orderId);
            request.getRequestDispatcher("/front/in/Pay.jsp").forward(request,response);
        }else if (operate.equals("over")){
            //支付完成跳转
            //数据库更新状态
            orderService.changeOrderState(orderId,1,null);
            PrintWriter out = response.getWriter();
            out.write("success");
            LogTools.INFO("支付接口没申请下来，假装看不见，直接跳转到订单管理页面");
        }else if(operate.equals("cancels")){
            //申请取消订单
            orderService.changeOrderState(orderId,4,new java.sql.Date(System.currentTimeMillis()));
            PrintWriter out = response.getWriter();
            out.write("success");
        }else if(operate.equals("shouhuo")){
            //申请收货
//            LogTools.DEBUG("日期：",new java.sql.Date(System.currentTimeMillis()));
            orderService.changeOrderState(orderId,3,new java.sql.Date(System.currentTimeMillis()));
            PrintWriter out = response.getWriter();
            out.write("success");
        }
        else{
            //支付失败跳转
            //数据库不更新状态
            LogTools.INFO("没支付成功也会直接跳转到订单管理页面");
        }
    }
}
