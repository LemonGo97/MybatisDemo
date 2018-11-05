package com.ambition.db;
/**
 * @Author: ambition
 * @Date: 2018/10/29 19:07
 * @Version 1.0
 */

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;

/**
 * @program: MybatisDemo
 * @description: MyBatis数据库连接操作初始化
 * @author: ambition
 * @create: 2018-10-29 19:07
 **/

public class DBAccess {
    public SqlSession getSqlSession() throws IOException{
        //通过配置文件获取数据库连接信息
        Reader reader=Resources.getResourceAsReader("MybatisConf.xml");
        //通过配置信息构建一个SqlSessionFactory
        SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
        SqlSession sqlSession=sqlSessionFactory.openSession();
        return sqlSession;
    }
}
