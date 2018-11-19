package com.ambition.controller.Market;
/**
 * @Author: ambition
 * @Date: 2018/11/18 16:52
 * @Version 1.0
 */

import com.ambition.entity.Shop.Shop;
import com.ambition.service.Shop.ListService;
import com.ambition.service.Shop.MaintainService;
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
 * @program: MybatisDemo
 * @description: 商铺信息修改
 * @author: ambition
 * @create: 2018-11-18 16:52
 **/
@WebServlet("/shopInfo.bu")
public class InfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session=req.getSession();
        String edit=req.getParameter("edit");
        if (edit.equals("yep")&&edit!=null){
            //执行信息维护功能


            //接受页面的值
            String shopId=req.getParameter("shopId");
            String shopname=req.getParameter("shopname");
            String shopaddress=req.getParameter("shopaddress");
            String telephone=req.getParameter("telephone");
            String businessman=req.getParameter("businessman");
            String shopinfo=req.getParameter("shopinfo");
            //调用维护服务的添加方法
            MaintainService maintainService=new MaintainService();
            maintainService.editShop(shopname,null,shopaddress,telephone,businessman,shopId,shopinfo);

            req.getRequestDispatcher("/shopInfo.bu?edit=nope&shopTel="+session.getAttribute("shopTel")).forward(req,resp);
        }
        if (edit.equals("nope")){
            //不执行信息维护
            LogTools.INFO("普通跳转请求");
            String shopTel=req.getParameter("shopTel");
            ListService listService=new ListService();
            List<Shop> shopList= listService.queryShopList(shopTel,"0");

            session.setAttribute("shopTel",shopList.get(0).getTelephone());
            req.setAttribute("shopList",shopList);
            req.getRequestDispatcher("/Shop/in/Shopinfo.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //接受页面的值

        String shopId=req.getParameter("shopId");
        String telephone=req.getParameter("telephone");
        String shopname=req.getParameter("shopname");
        String password=req.getParameter("password");
        //调用维护服务的添加方法
        MaintainService maintainService=new MaintainService();
        maintainService.editShop(shopname,password,null,telephone,null,shopId,null);

    }
}
