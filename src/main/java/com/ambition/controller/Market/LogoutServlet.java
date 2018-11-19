package com.ambition.controller.Market;
/**
 * @Author: ambition
 * @Date: 2018/11/19 19:57
 * @Version 1.0
 */

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @program: MybatisDemo
 * @description: 商户方退出登陆
 * @author: ambition
 * @create: 2018-11-19 19:57
 **/
@WebServlet("/shopLogout.bu")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session=req.getSession();
        session.removeAttribute("phone");
        session.removeAttribute("shopId");
        session.removeAttribute("shopTel");
        resp.sendRedirect("/Shop/login.jsp");
    }
}
