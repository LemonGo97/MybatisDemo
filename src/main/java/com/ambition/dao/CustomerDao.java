package com.ambition.dao;
/**
 * @Author: ambition
 * @Date: 2018/10/29 19:20
 * @Version 1.0
 */

import com.ambition.db.DBAccess;
import com.ambition.entity.Customer.Customer;
import com.ambition.entity.Customer.CustomerAddress;
import com.ambition.util.LogTools;
import org.apache.ibatis.session.SqlSession;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 和tbl_Customer表有关的数据库操作
 * @author: ambition
 * @create: 2018-10-29 19:20
 **/

public class CustomerDao {
    /** 
     * @Description: 条件查询传递页数获取结果
     * @Param:  String username, String startdate,String enddate, String telephone,Integer page,Integer limit
     * @return:   List<Customer>
     * @Author: ambition 
     * @Date: 2018/11/1 
     */ 
    public List<Customer> queryCustomerList(String username, String startdate,String enddate, String telephone,Integer page,Integer limit,String isDel) {
        DBAccess dbAccess = new DBAccess();
        List<Customer> customersList = new ArrayList<Customer>();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Customer customer=new Customer();
            customer.setUsername(username);
            customer.setStartdate(startdate);
            customer.setEnddate(enddate);
            customer.setTelephone(telephone);
            customer.setPages(page);
            customer.setLimits(limit);
            customer.setIsDel(isDel);
            customersList=sqlSession.selectList("Customer.queryCustomerList",customer);
            LogTools.show("CustomerDao","执行Mybatis查询全部用户语句成功");
        } catch (Exception e) {
            LogTools.show("CustomerDao","执行Mybatis查询全部用户语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("CustomerDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
        return customersList;
    }

    /**
     * @Description: 前段查询分页获取查询到的结果条数
     * @Param:  String username, String startdate,String enddate, String telephone
     * @return: Integer
     * @Author: ambition
     * @Date: 2018/11/1
     */
    public Integer queryCustomerListnum( String username, String startdate,String enddate, String telephone,String isDel) {
        DBAccess dbAccess = new DBAccess();
        List<Customer> customersList = new ArrayList<Customer>();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Customer customer=new Customer();
            customer.setUsername(username);
            customer.setStartdate(startdate);
            customer.setEnddate(enddate);
            customer.setTelephone(telephone);
            customer.setIsDel(isDel);
            customersList=sqlSession.selectList("Customer.queryCustomerList",customer);
            LogTools.show("CustomerDao","执行Mybatis查询全部用户语句成功");
        } catch (Exception e) {
            LogTools.show("CustomerDao","执行Mybatis查询全部用户语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("CustomerDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
        return customersList.size();
    }

    /** 
     * @Description: 删除单条方法 
     * @Param:  Object userId
     * @return:  void
     * @Author: ambition 
     * @Date: 2018/11/3 
     */ 
    public void deleteOne(Object userId){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.update("Customer.deleteOne",userId);
            sqlSession.commit();
            LogTools.show("CustomerDao","单个删除事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("CustomerDao","单个删除事务失败，回滚操作");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }

    }


    /** 
     * @Description: 批量删除用户的方法
     * @Param: List<String> userIds
     * @return: void
     * @Author: ambition 
     * @Date: 2018/11/3 
     */ 
    public void deleteBatch(List<String> userIds){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.update("Customer.deleteBatch",userIds);
            sqlSession.commit();
            LogTools.show("CustomerDao","批量删除事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("CustomerDao","批量删除事务失败，回滚操作");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }

    }



    /**
     * @Description: 删除单条方法
     * @Param:  Object userId
     * @return:  void
     * @Author: ambition
     * @Date: 2018/11/3
     */
    public void recOne(Object userId){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.update("Customer.recOne",userId);
            sqlSession.commit();
            LogTools.show("CustomerDao","单个恢复事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("CustomerDao","单个恢复事务失败，回滚操作");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }

    }


    /**
     * @Description: 批量删除用户的方法
     * @Param: List<String> userIds
     * @return: void
     * @Author: ambition
     * @Date: 2018/11/3
     */
    public void recBatch(List<String> userIds){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.update("Customer.recBatch",userIds);
            sqlSession.commit();
            LogTools.show("CustomerDao","批量恢复事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("CustomerDao","批量恢复事务失败，回滚操作");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }

    }

    /** 
     * @Description: 添加单个用户的方法，其中的Createdate字段获取当前系统时间，自动添加的，delete_status字段设置为0代表没有被删除
     * @Param:  String username,String password, String telephone
     * @return: void
     * @Author: ambition 
     * @Date: 2018/11/3 
     */ 
    public Integer addCustomer( String username,String password, String telephone){
        DBAccess dbAccess = new DBAccess();
        LogTools.show("CustomerDao","执行Mybatis语句成功");
        SqlSession sqlSession = null;
        Customer customer=null;
        try {
            sqlSession=dbAccess.getSqlSession();
            customer=new Customer();
            customer.setUsername(username);
            customer.setPassword(password);
            customer.setTelephone(telephone);
            customer.setDelete_status(0);
            customer.setCreatedate(new Date(System.currentTimeMillis()));
            //通过sqlSession执行Sql语句、

            sqlSession.insert("Customer.addCustomer",customer);
//            Integer reinsert=]("Customer.queryAddid");
            sqlSession.commit();
//            LogTools.show("CustomerDao",reinsert);
            LogTools.show("CustomerDao","执行Mybatis语句成功");

            return customer.getUserId();
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("CustomerDao","执行Mybatis语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("CustomerDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
        return customer.getUserId();
    }

    /** 
     * @Description: 添加Customer的其他两张表的信息
     * @Param:
     * @return:
     * @Author: ambition 
     * @Date: 2018/11/3 
     */ 
    public void addCustomerothers(Integer customerId){
        DBAccess dbAccess = new DBAccess();
        LogTools.show("CustomerDao","执行Mybatis语句成功");
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.insert("Customer.addCustomeraddress",customerId);
            sqlSession.insert("Customer.addCustomerstate",customerId);
            sqlSession.commit();
            LogTools.show("CustomerDao","执行Mybatis语句成功");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("CustomerDao","执行Mybatis语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("CustomerDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
    }


    public void editCustomer(String username,String password, String telephone,Integer userId){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Customer customer=new Customer();
            customer.setUsername(username);
            customer.setPassword(password);
            customer.setTelephone(telephone);
            customer.setUserId(userId);
            sqlSession.update("Customer.editCustomer",customer);
            sqlSession.commit();
            LogTools.show("CustomerDao","用户修改事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("CustomerDao","用户修改事务失败，回滚操作");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

    public void editCustomerAddress(Integer CustomerId, String address1, String address2, String address3) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            CustomerAddress customerAddress=new CustomerAddress();
            customerAddress.setCustomerId(CustomerId);
            customerAddress.setAddress1(address1);
            customerAddress.setAddress2(address2);
            customerAddress.setAddress3(address3);
            sqlSession.update("CustomerAddress.editCustomerAddress",customerAddress);
            sqlSession.commit();
            LogTools.show("CustomerDao","地址修改事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("CustomerDao","地址修改事务失败，回滚操作");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }


    public List<Customer> CustomerLogin(String telephone,String password,String delFlag) {
        DBAccess dbAccess = new DBAccess();
        List<Customer> customersList = new ArrayList<Customer>();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Customer customer=new Customer();
            customer.setTelephone(telephone);
            customer.setPassword(password);
            customer.setIsDel(delFlag);
            customersList=sqlSession.selectList("Customer.doLogin",customer);
            LogTools.show("CustomerDao","执行Mybatis查询全部用户语句成功");
        } catch (Exception e) {
            LogTools.show("CustomerDao","执行Mybatis查询全部用户语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("CustomerDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
        return customersList;
    }
}
