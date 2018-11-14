package com.ambition.dao;
/**
 * @Author: ambition
 * @Date: 2018/11/14 8:28
 * @Version 1.0
 */

import com.ambition.db.DBAccess;
import com.ambition.entity.Admin.Admin;
import com.ambition.util.LogTools;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 管理员
 * @author: ambition
 * @create: 2018-11-14 08:28
 **/

public class AdminDao {
   public List<Admin> queryAdminList(String account,String password){
       List<Admin> adminList =new ArrayList<Admin>();
       DBAccess dbAccess = new DBAccess();
       SqlSession sqlSession = null;
       try {
           sqlSession=dbAccess.getSqlSession();
           Admin admin=new Admin();
           admin.setAccount(account);
           admin.setPassword(password);
           LogTools.DEBUG("AdminDao",admin);
           //通过sqlSession执行Sql语句
           adminList=sqlSession.selectList("Admin.queryAdminList",admin);
       }catch (Exception e){
//           e.printStackTrace();
           LogTools.ERROR("管理员登陆","登录失败");
       }finally {
           if (sqlSession != null) {
               sqlSession.close();
           }
       }
       return adminList;
   }
}
