package com.ambition.service.Front;
/**
 * @Author: ambition
 * @Date: 2018/10/29 19:30
 * @Version 1.0
 */

import com.ambition.dao.CustomerDao;
import com.ambition.dao.ShopDao;
import com.ambition.db.KeyChain;
import com.ambition.entity.Customer.Customer;
import com.ambition.entity.Shop.Shop;
import com.ambition.util.decimal._DES;

import java.util.List;



public class LoginService {
    public List<Customer> CustomerLogin(String telephone, String password, String delFlag) {
        CustomerDao customerDao = new CustomerDao();
        //将Servlet中传递的分页需求进过算法转化成Mysql查询语句中的limit和page字段
        String passwords= null;
        try {
            passwords = _DES.encode_des(KeyChain.MYSQL_KEY, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<Customer> customers = customerDao.CustomerLogin(telephone, passwords, delFlag);
        return customers;

    }
    public List<Shop> ShopLogin(String telephone, String password, String delFlag) {
        ShopDao shopDao = new ShopDao();
        //将Servlet中传递的分页需求进过算法转化成Mysql查询语句中的limit和page字段
        String passwords= null;
        try {
            passwords = _DES.encode_des(KeyChain.MYSQL_KEY, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<Shop> shops = shopDao.ShopLogin(telephone, passwords, Integer.valueOf(delFlag));
        return shops;
    }
    public boolean CustomerRegQuery(String telephone) {
        CustomerDao customerDao = new CustomerDao();

        List<Customer> customers = customerDao.CustomerRegQuery(telephone);
        if (customers.size()!=0){
            return false;
        }else{
            return true;
        }

    }
    public boolean ShopRegQuery(String telephone) {
        ShopDao shopDao=new ShopDao();

        List<Shop> shops = shopDao.queryShopList(null,null,null,telephone,null,null,null);
        if (shops.size()!=0){
            return false;
        }else{
            return true;
        }

    }
    public List<Customer> customerInfoQuery(String userId,String delFlag ) {
        CustomerDao customerDao = new CustomerDao();
        List<Customer> customers = customerDao.customerInfoQuery(Integer.valueOf(userId),delFlag);
        return customers;

    }
    public void customerInfoEdit(String userId,String username,String email,String weibo,String telephone,String qq,String intro,String headerimages){
        CustomerDao customerDao = new CustomerDao();
        customerDao.editCustomerOthers(Integer.valueOf(userId),username,email,weibo,telephone,qq,intro,headerimages);
    }


    public void customerStateChange(Integer userId,Integer state){
        CustomerDao customerDao = new CustomerDao();
        if (userId!=null&&state!=null){
            customerDao.customerStateChange(userId,state);
        }
    }
}
