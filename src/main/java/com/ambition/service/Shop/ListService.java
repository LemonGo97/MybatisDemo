package com.ambition.service.Shop;
/**
 * @Author: ambition
 * @Date: 2018/11/5 9:16
 * @Version 1.0
 */

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.ambition.dao.CustomerDao;
import com.ambition.dao.ShopDao;
import com.ambition.util.LogTools;
import com.ambition.util.layui.LayuiPageUtils;

/**
 * @program: MybatisDemo
 * @description: 商户列表查询
 * @author: ambition
 * @create: 2018-11-05 09:16
 **/

public class ListService {
    public String queryShopList(String shopname, String startdate, String enddate, String telephone, String page, String limit, String delFlag){

        ShopDao shopDao=new ShopDao();
        Integer delFlags=Integer.valueOf(delFlag);
        //将Servlet中传递的分页需求进过算法转化成Mysql查询语句中的limit和page字段
        if (page!=null&&limit!=null){
            Integer pages=(Integer.valueOf(page)-1)*Integer.valueOf(limit);
            Integer limits=Integer.valueOf(limit);
            //使用PageUtils中写的方法，把从数据库中取出的数据序列化（转为JSON）
            JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
            String str=JSON.toJSONString(shopDao.queryShopList(shopname,startdate,enddate,telephone,pages,limits,delFlags), SerializerFeature.WriteDateUseDateFormat);
            String layuiJSON= LayuiPageUtils.doJSON(str,shopDao.queryShopListnum(shopname,startdate,enddate,telephone,delFlags));
            LogTools.show("JSON<layuiFormat>",layuiJSON);
            return layuiJSON;
        }else{
            Integer pages=null;
            Integer limits=null;
            //使用PageUtils中写的方法，把从数据库中取出的数据序列化（转为JSON）
            JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
            String str=JSON.toJSONString(shopDao.queryShopList(shopname,startdate,enddate,telephone,pages,limits,delFlags), SerializerFeature.WriteDateUseDateFormat);
            String layuiJSON= LayuiPageUtils.doJSON(str,shopDao.queryShopListnum(shopname,startdate,enddate,telephone,delFlags));
            return layuiJSON;
        }
    }
}
