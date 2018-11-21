package com.ambition.controller.Admin.Customer;

import com.ambition.util.LogTools;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Author: ambition
 * @Date: 2018/11/10 18:08
 * @Version 1.0
 */
@WebFilter("/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //乱码问题：
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        HttpServletRequest request=(HttpServletRequest) req;
        LogTools.DEBUG("页面请求==========>",request.getServletPath());
        if (request.getServletPath().indexOf(".us")!=-1){
            HttpSession session=request.getSession();
            if (session.getAttribute("userId")!=null){
                //登陆成功，不进行拦截
                chain.doFilter(req, resp);
            }else{
                req.setAttribute("msg", "您还没有登录，请先登录！！");
                req.getRequestDispatcher("/front/login.jsp").forward(req, resp);
            }
        }else if(request.getServletPath().indexOf(".bu")!=-1){
            HttpSession session=request.getSession();
            if (session.getAttribute("shopId")!=null){
                //登陆成功，不进行拦截
                chain.doFilter(req, resp);
            }else{
                req.setAttribute("msg", "您还没有登录，请先登录！！");
                req.getRequestDispatcher("/Shop/login.jsp").forward(req, resp);
            }
        }
        else if(request.getServletPath().indexOf(".ro")!=-1){
            HttpSession session=request.getSession();
            if (session.getAttribute("adminName")!=null){
                //登陆成功，不进行拦截
                chain.doFilter(req, resp);
            }else{
                req.setAttribute("msg", "您还没有登录，请先登录！！");
                req.getRequestDispatcher("/Admin/login.jsp").forward(req, resp);
            }
        }
        else{
            //别的操作，不进行拦截
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
