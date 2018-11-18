package com.ambition.entity.Shop;

import lombok.Data;

import java.util.Date;


/**
 * @author ambition
 */

@Data

public class Shop {

    private Integer shopId;//店铺唯一ID
    private String shopName;//店铺名
    private String passWord;//店铺管理密码
    private String shopAddress;//店铺所在地
    private Date createDate;//店铺创建时间
    private Integer shopState;//店铺审核状态
    private String telephone;//店铺联系电话
    private String businessMan;//店铺负责人
    private String shopInfo;//店铺简介

    private Integer deleteStatus;//小黑屋状态

    //以下是检索时候的几个传递检索条件的值，数据库中并无此字段
    private String startDate;//起始时间
    private String endDate;//结束时间
    private Integer pages;//第几页
    private Integer limits;//每页多少列

}
