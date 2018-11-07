package com.ambition.service.Customer;
/**
 * @Author: ambition
 * @Date: 2018/10/30 11:30
 * @Version 1.0
 */

import com.ambition.dao.CustomerDao;
import com.ambition.db.KeyChain;
import com.ambition.util.LogTools;
import com.ambition.util.decimal._DES;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 用于用户信息的维护
 * @author: ambition
 * @create: 2018-10-30 11:30
 **/

public class MaintainService {

    public void deleteOne(String Id) {

        if (Id != null && !"".equals(Id.trim())) {
            CustomerDao customerDao = new CustomerDao();
            // Integer userId = Integer.valueOf(Id);
            customerDao.deleteOne(Id);
            LogTools.show("MaintainService", "单条删除操作成功");
        } else {
            LogTools.show("MaintainService", "单条删除操作失败");
        }

    }

    public void deleteBatch(List<String> Ids) {
        // LogTools.show("MaintainService", Ids.length);
        CustomerDao customerDao = new CustomerDao();
        customerDao.deleteBatch(Ids);
        LogTools.show("MaintainService", "批量删除操作成功");
    }
    public void recOne(String Id) {

        if (Id != null && !"".equals(Id.trim())) {
            CustomerDao customerDao = new CustomerDao();
            // Integer userId = Integer.valueOf(Id);
            customerDao.recOne(Id);
            LogTools.show("MaintainService", "单条删除操作成功");
        } else {
            LogTools.show("MaintainService", "单条删除操作失败");
        }

    }

    public void recBatch(List<String> Ids) {
        // LogTools.show("MaintainService", Ids.length);
        CustomerDao customerDao = new CustomerDao();
        customerDao.recBatch(Ids);
        LogTools.show("MaintainService", "批量删除操作成功");
    }

    public void addCustomer(String username,String password, String telephone){
        CustomerDao customerDao = new CustomerDao();
        //调用工具类的DES加密方法，对用户密码进行加密
        try {
            password= _DES.encode_des(KeyChain.MYSQL_KEY,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Integer userId=customerDao.addCustomer(username, password, telephone);
        LogTools.show("MaintainService", "添加单条操作成功:"+userId);
        addCustomerothers(userId);
    }

    public void addCustomerothers(Integer customerId){
        CustomerDao customerDao = new CustomerDao();
        customerDao.addCustomerothers(customerId);
        LogTools.show("MaintainService", "添加单条操作成功");
    }
    public void editCustomer(String username,String password, String telephone,String userId){
        CustomerDao customerDao=new CustomerDao();
        //调用工具类的DES加密方法，对用户密码进行加密
        try {
            password=_DES.encode_des(KeyChain.MYSQL_KEY,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        customerDao.editCustomer(username, password,  telephone, Integer.valueOf(userId));
    }

    public void editCustomerAddress(String userId, String address1, String address2, String address3) {
        CustomerDao customerDao=new CustomerDao();
        customerDao.editCustomerAddress(Integer.valueOf(userId),address1,address2,address3);
    }
}
