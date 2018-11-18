package com.ambition.service.Shop;
/**
 * @Author: ambition
 * @Date: 2018/10/30 11:30
 * @Version 1.0
 */

import com.ambition.dao.ShopDao;
import com.ambition.db.KeyChain;
import com.ambition.util.LogTools;
import com.ambition.util.decimal._DES;

import java.util.List;

/**
 * @program: MybatisDemo
 * @description: 用于商户信息的维护
 * @author: ambition
 * @create: 2018-10-30 11:30
 **/

public class MaintainService {

    public void deleteOne(String Id) {

        if (Id != null && !"".equals(Id.trim())) {
            ShopDao shopDao = new ShopDao();
            // Integer userId = Integer.valueOf(Id);
            shopDao.deleteOne(Id);
            LogTools.show("MaintainService", "单条删除操作成功");
        } else {
            LogTools.show("MaintainService", "单条删除操作失败");
        }

    }

    public void deleteBatch(List<String> Ids) {
        // LogTools.show("MaintainService", Ids.length);
        ShopDao shopDao = new ShopDao();
        shopDao.deleteBatch(Ids);
        LogTools.show("MaintainService", "批量删除操作成功");
    }
    public void recOne(String Id) {

        if (Id != null && !"".equals(Id.trim())) {
            ShopDao shopDao = new ShopDao();
            // Integer userId = Integer.valueOf(Id);
            shopDao.recOne(Id);
            LogTools.show("MaintainService", "单条删除操作成功");
        } else {
            LogTools.show("MaintainService", "单条删除操作失败");
        }

    }

    public void recBatch(List<String> Ids) {
        // LogTools.show("MaintainService", Ids.length);
        ShopDao shopDao = new ShopDao();
        shopDao.recBatch(Ids);
        LogTools.show("MaintainService", "批量删除操作成功");
    }

    public void addShop(String shopname,String bussinessman,String password,String telephone,String shopaddress){
        ShopDao shopDao = new ShopDao();
        //调用工具类的DES加密方法，对用户密码进行加密
        try {
            password= _DES.encode_des(KeyChain.MYSQL_KEY,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        shopDao.addShop(shopname,bussinessman,password,telephone,shopaddress);
        LogTools.show("MaintainService", "添加单条操作成功");
    }

    public int queryAddid(){
        ShopDao shopDao = new ShopDao();
        int shopId= shopDao.queryAddid();
        LogTools.show("MaintainService", "查询到刚刚插入到主表中的ID:"+shopId);
        return shopId;
    }

    public void addShopothers(Integer shopId){
        ShopDao shopDao = new ShopDao();
        shopDao.addShopothers(shopId);
        LogTools.show("MaintainService", "添加单条操作成功");
    }
    public void editShop(String shopname,String password, String shopaddress,String telephone,String businessman,String shopId,String shopinfo){
        ShopDao shopDao=new ShopDao();
        //调用工具类的DES加密方法，对用户密码进行加密
        try {
            password=_DES.encode_des(KeyChain.MYSQL_KEY,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        shopDao.editShop(shopname, password,  shopaddress, telephone, businessman, Integer.valueOf(shopId) ,shopinfo);

    }

    public void editshopState(Integer shopId,Integer shopState){
        ShopDao shopDao=new ShopDao();
        shopDao.editshopState(shopId,shopState);
    }

}
