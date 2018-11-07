package com.ambition.controller.Customer;

import com.ambition.service.Customer.MaintainService;
import com.ambition.util.LogTools;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: ambition
 * @Date: 2018/11/7 16:34
 * @Version 1.0
 */
@WebServlet(name = "EditAddressServlet",urlPatterns = "/editAddress")
public class EditAddressServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String userId=request.getParameter("userId");
        String address1=request.getParameter("address1");
        String address2=request.getParameter("address2");
        String address3=request.getParameter("address3");
        LogTools.DEBUG("EditAddressServlet:",userId+address1+address2+address3);


        MaintainService maintainService=new MaintainService();
        maintainService.editCustomerAddress(userId,address1,address2,address3);
    }

}
