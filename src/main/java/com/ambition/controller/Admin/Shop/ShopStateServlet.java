package com.ambition.controller.Admin.Shop;

import com.ambition.service.Shop.MaintainService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: ambition
 * @Date: 2018/11/6 16:43
 * @Version 1.0
 */

@WebServlet(name = "ShopStateServlet",urlPatterns = "/shopState")
public class ShopStateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       if(request.getParameter("shopState") != null){
           Integer shopId = Integer.parseInt(request.getParameter("shopId"));
           Integer shopState = G(request,"shopState");
           MaintainService maintainService=new MaintainService();
           maintainService.editshopState(shopId,shopState);
       }else{
           LogTools.ERROR("ShopStateServlet","前台传过来的值是空的");
       }
    }

    private int G(HttpServletRequest request, String parm) {
        return request.getParameter(parm).equals("true") ? 1 : 0;
    }
}
