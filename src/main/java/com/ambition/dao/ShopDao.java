package com.ambition.dao;
/**
 * @Author: ambition
 * @Date: 2018/10/29 19:20
 * @Version 1.0
 */

import com.ambition.db.DBAccess;
import com.ambition.entity.Shop.Shop;
import com.ambition.util.LogTools;
import org.apache.ibatis.session.SqlSession;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 和tbl_Shop表有关的数据库操作
 * @author: ambition
 * @create: 2018-10-29 19:20
 **/

public class ShopDao {
    /** 
     * @Description: 条件查询传递页数获取结果
     * @Param:  String username, String startdate,String enddate, String telephone,Integer page,Integer limit
     * @return:   List<Shop>
     * @Author: ambition 
     * @Date: 2018/11/1 
     */ 
    public List<Shop> queryShopList(String shopname, String startdate, String enddate, String telephone, Integer page, Integer limit, Integer deleteStatus) {
        DBAccess dbAccess = new DBAccess();
        List<Shop> shopsList = new ArrayList<Shop>();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Shop shop=new Shop();
            //主要参数
            if (shopname!=null&&!shopname.equals("")){
                shop.setShopName(shopname);
            }
            if (startdate!=null&&!startdate.equals("")){
                shop.setStartDate(startdate);
            }
            if (enddate!=null&&!enddate.equals("")){
                shop.setEndDate(enddate);
            }
            if (telephone!=null&&!telephone.equals("")){
                shop.setTelephone(telephone);
            }
            if (page!=null){
                shop.setPages(page);
            }
            if (limit!=null){
                shop.setLimits(limit);
            }
            if (deleteStatus!=null){
                shop.setDeleteStatus(deleteStatus);
            }
            //额外参数
            shopsList=sqlSession.selectList("Shop.queryShopList",shop);
            LogTools.show("ShopDao","执行Mybatis查询全部商家语句成功");
        } catch (Exception e) {
            LogTools.show("ShopDao","执行Mybatis查询全部商家语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("ShopDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
        return shopsList;
    }

    /**
     * @Description: 前段查询分页获取查询到的结果条数
     * @Param:  String username, String startdate,String enddate, String telephone
     * @return: Integer
     * @Author: ambition
     * @Date: 2018/11/1
     */
    public Integer queryShopListnum( String shopname, String startdate, String enddate, String telephone,Integer deleteStatus) {
        DBAccess dbAccess = new DBAccess();
        List<Shop> shopsList = new ArrayList<Shop>();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Shop shop=new Shop();
            shop.setShopName(shopname);
            shop.setStartDate(startdate);
            shop.setEndDate(enddate);
            shop.setTelephone(telephone);
            shop.setDeleteStatus(deleteStatus);
            shopsList=sqlSession.selectList("Shop.queryShopList",shop);
            LogTools.show("ShopDao","执行Mybatis查询全部用户语句成功");
        } catch (Exception e) {
            LogTools.show("ShopDao","执行Mybatis查询全部用户语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("ShopDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
        return shopsList.size();
    }

    /** 
     * @Description: 删除单条方法 
     * @Param:  Object userId
     * @return:  void
     * @Author: ambition 
     * @Date: 2018/11/3 
     */ 
    public void deleteOne(Object shopId){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.update("Shop.deleteOne",shopId);
            sqlSession.commit();
            LogTools.show("ShopDao","单个删除事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("ShopDao","单个删除事务失败，回滚操作");
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
    public void deleteBatch(List<String> shopIds){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.update("Shop.deleteBatch",shopIds);
            sqlSession.commit();
            LogTools.show("ShopDao","批量删除事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("ShopDao","批量删除事务失败，回滚操作");
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
    public void recOne(Object shopId){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.update("Shop.recOne",shopId);
            sqlSession.commit();
            LogTools.show("ShopDao","单个恢复事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("ShopDao","单个恢复事务失败，回滚操作");
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
    public void recBatch(List<String> shopIds){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.update("Shop.recBatch",shopIds);
            sqlSession.commit();
            LogTools.show("ShopDao","批量恢复事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("ShopDao","批量恢复事务失败，回滚操作");
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
    public void addShop( String shopname,String bussinessman,String password,String telephone,String shopaddress){
        DBAccess dbAccess = new DBAccess();
        LogTools.show("ShopDao","执行Mybatis语句成功");
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            Shop shop=new Shop();
            if (shopaddress!=null&&!shopaddress.equals("")){
                shop.setShopAddress(shopaddress);
            }
            if (bussinessman!=null&&!bussinessman.equals("")){
                shop.setBusinessMan(bussinessman);
            }
            shop.setShopName(shopname);
            shop.setPassWord(password);
            shop.setTelephone(telephone);
            shop.setShopState(0);
            shop.setDeleteStatus(0);
            shop.setCreateDate(new Date(System.currentTimeMillis()));
            //通过sqlSession执行Sql语句、

            sqlSession.insert("Shop.addShop",shop);
//            Integer reinsert=]("Shop.queryAddid");
            sqlSession.commit();
//            LogTools.show("ShopDao",reinsert);
            LogTools.show("ShopDao","执行Mybatis语句成功");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("ShopDao","执行Mybatis语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("ShopDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
    }

    /** 
     * @Description: 获取系统刚添加的主键ID
     * @Param:
     * @return:  int
     * @Author: ambition 
     * @Date: 2018/11/3 
     */ 
    public int queryAddid(){
        DBAccess dbAccess = new DBAccess();
//        LogTools.show("ShopDao","执行Mybatis语句成功");
        SqlSession sqlSession = null;
        int reInsert = -1;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            reInsert = sqlSession.selectOne("Shop.queryAddid");
            LogTools.DEBUG("获取到的主键",reInsert);
//            LogTools.show("ShopDao","执行Mybatis语句成功");
        } catch (Exception e) {
//            LogTools.show("ShopDao","执行Mybatis语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
//                LogTools.show("ShopDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
        return reInsert;
    }


    /** 
     * @Description: 添加Shop的其他两张表的信息
     * @Param:
     * @return:
     * @Author: ambition 
     * @Date: 2018/11/3 
     */ 
    public void addShopothers(Integer shopId){
        DBAccess dbAccess = new DBAccess();
        LogTools.show("ShopDao","执行Mybatis语句成功");
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            sqlSession.insert("Shop.addShopaddress",shopId);
            sqlSession.insert("Shop.addShopstate",shopId);
            sqlSession.commit();
            LogTools.show("ShopDao","执行Mybatis语句成功");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("ShopDao","执行Mybatis语句之前失败");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                LogTools.show("ShopDao","关闭Mybatis连接");
                sqlSession.close();
            }
        }
    }


    public void editShop(String shopname,String password, String shopaddress,String telephone,String businessman,Integer shopId,String shopinfo){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Shop shop=new Shop();
            if (shopname!=null&&!shopname.equals("")){
                shop.setShopName(shopname);
            }
            if (password!=null&&!password.equals("")){
                shop.setPassWord(password);
            }
            if (telephone!=null&&!telephone.equals("")){
                shop.setTelephone(telephone);
            }
            if (shopaddress!=null&&!shopaddress.equals("")){
                shop.setShopAddress(shopaddress);
            }
            if (businessman!=null&&!businessman.equals("")){
                shop.setBusinessMan(businessman);
            }
            if (shopinfo!=null&&!shopinfo.equals("")){
                shop.setShopInfo(shopinfo);
            }
            shop.setShopId(shopId);
            sqlSession.update("Shop.editShop",shop);
            sqlSession.commit();
            LogTools.show("ShopDao","用户修改事务成功提交");
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("ShopDao","用户修改事务失败，回滚操作");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

    public void editshopState(Integer shopId,Integer shopState){
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Shop shop=new Shop();
            shop.setShopState(shopState);
            shop.setShopId(shopId);
            LogTools.DEBUG("editshopState",shop);
            sqlSession.update("Shop.editshopState",shop);
            sqlSession.commit();
        } catch (Exception e) {
            sqlSession.rollback();
            LogTools.show("ShopDao","用户修改事务失败，回滚操作");
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }
    public List<Shop> ShopLogin(String telephone,String password,Integer delFlag) {
        DBAccess dbAccess = new DBAccess();
        List<Shop> shopList = new ArrayList<Shop>();
        SqlSession sqlSession = null;
        try {
            sqlSession=dbAccess.getSqlSession();
            //通过sqlSession执行Sql语句
            Shop shop=new Shop();
            shop.setTelephone(telephone);
            shop.setPassWord(password);
            shop.setDeleteStatus(delFlag);
            shopList=sqlSession.selectList("Shop.queryShopList",shop);
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
        return shopList;
    }
}
