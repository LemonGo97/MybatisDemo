package com.ambition.controller.Front;
/**
 * @Author: ambition
 * @Date: 2018/11/9 19:29
 * @Version 1.0
 */

import com.ambition.entity.Order.Order;
import com.ambition.service.Front.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 用户面的订单查询记录
 * @author: ambition
 * @create: 2018-11-09 19:29
 **/
@WebServlet(name = "OrderQueryServlet",urlPatterns = "/customerQueryOrder")
public class OrderQueryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        //获取页面传过来的分页相关参数,其中，page表示第几页，limit表示每页多少数据
//        String userId=req.getParameter("userId");
//        String telephone=req.getParameter("telephone");
//        String startdate= req.getParameter("startdate");
//        String enddate= req.getParameter("enddate");
//        String page= req.getParameter("page");
//        String limit= req.getParameter("limit");
//        String delFlag=req.getParameter("del");

        /*
        *
        * private Integer orderId;
    private String orderFile;
    private double money;
    private Integer shopId;
    private Integer customerId;
    private Integer orderState;
    private Date overDate;
    private Date createDate;
    private String address;
        * */
        String customerId=req.getParameter("customerId");
        OrderService orderService=new OrderService();
        List<Order> orders = orderService.queryOrderList(customerId);

        for (Order o: orders
             ) {
            System.out.println("属性:"+o);
        }


        req.setAttribute("orders",orders);
        req.getRequestDispatcher("/front/order.jsp").forward(req,resp);
        //调用Service层用户查询方法，在Service层格式化从数据库中取出的JSON数据之后，直接写出到servlet页面<jsonCustomer>
//        ListService listService=new ListService();
    }
}
