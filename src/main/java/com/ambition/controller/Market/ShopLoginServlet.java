package com.ambition.controller.Market;

import com.ambition.entity.Customer.Customer;
import com.ambition.entity.Shop.Shop;
import com.ambition.service.Front.LoginService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @Author: ambition
 * @Date: 2018/11/19 14:12
 * @Version 1.0
 */
@WebServlet("/ShopLogin.lobu")
public class ShopLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String Telephone=request.getParameter("telephone");
        String password=request.getParameter("password");
        String isDel=request.getParameter("isDel");

        LoginService loginService=new LoginService();
        List<Shop> shops=loginService.ShopLogin(Telephone,password,isDel);
        if (shops!=null&&shops.size()!=0) {
            //登陆成功
            Integer shopId=shops.get(0).getShopId();
            String shopName=shops.get(0).getShopName();
            String phone=shops.get(0).getTelephone();
            LogTools.INFO("商户登陆控制器返回的信息=====>","商户："+shopName+" 登陆成功");
            HttpSession session=request.getSession();
            //把获取到的用户信息保存起来
            session.setAttribute("phone",phone);
            session.setAttribute("shopId",shopId);
            response.sendRedirect("/MarketServlet.bu");
        } else {
            response.sendRedirect("/Shop/login.jsp?error=yes");
            //登陆失败
            LogTools.DEBUG("LoginServlet","用户登陆失败");
        }
    }
}
