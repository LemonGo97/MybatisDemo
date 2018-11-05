package com.ambition.service.Customer;
/**
 * @Author: ambition
 * @Date: 2018/10/29 19:30
 * @Version 1.0
 */

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.ambition.dao.CustomerDao;
import com.ambition.entity.Customer.Customer;
import com.ambition.util.LogTools;
import com.ambition.util.layui.LayuiPageUtils;

import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 列表相关的业务功能
 * @author: ambition
 * @create: 2018-10-29 19:30
 **/

public class ListService {
    public String queryCustomerList(String username, String startdate,String enddate, String telephone,String page,String limit,String delFlag){
        CustomerDao customerDao=new CustomerDao();
        //将Servlet中传递的分页需求进过算法转化成Mysql查询语句中的limit和page字段
        if (page!=null&&limit!=null){
            Integer pages=(Integer.valueOf(page)-1)*Integer.valueOf(limit);
            Integer limits=Integer.valueOf(limit);
            //使用PageUtils中写的方法，把从数据库中取出的数据序列化（转为JSON）
            JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
            String str=JSON.toJSONString(customerDao.queryCustomerList(username,startdate,enddate,telephone,pages,limits,delFlag), SerializerFeature.WriteDateUseDateFormat);
            String layuiJSON= LayuiPageUtils.doJSON(str,customerDao.queryCustomerListnum(username,startdate,enddate,telephone,delFlag));
            LogTools.show("JSON<layuiFormat>",layuiJSON);
            LogTools.show("JSON<layuiFormat>",str.substring(1,str.length()));
            return layuiJSON;
        }else{
            Integer pages=null;
            Integer limits=null;
            //使用PageUtils中写的方法，把从数据库中取出的数据序列化（转为JSON）
            JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
            String str=JSON.toJSONString(customerDao.queryCustomerList(username,startdate,enddate,telephone,pages,limits,delFlag), SerializerFeature.WriteDateUseDateFormat);
            String layuiJSON= LayuiPageUtils.doJSON(str,customerDao.queryCustomerListnum(username,startdate,enddate,telephone,delFlag));
            return layuiJSON;
        }
    }
}
