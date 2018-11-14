package com.ambition.controller.Front;

import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Author: ambition
 * @Date: 2018/11/10 18:10
 * @Version 1.0
 */
@WebServlet("/customerlogout.do")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //把session中的登陆信息干掉 返回登陆页面
        HttpSession session=req.getSession();
        LogTools.INFO("用户注销控制器返回的信息=====>","用户："+session.getAttribute("username")+" 退出登陆");
        session.removeAttribute("userId");
        session.removeAttribute("username");
        resp.sendRedirect("/front/login.jsp");
    }
}
