package com.ambition.entity.Customer;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;


/** 
 * @Description: Cutsomer用户的实体类 其中使用lomlok的 @Data 自动生成Getter、Setter、toString、equals方法
 * @Author: ambition 
 * @Date: 2018/11/3 
 */ 

@Data

public class Customer {


    private Integer userId;
    private String username;
    private String password;
    private Date createdate;
    private String telephone;
    private Integer delete_status;

    //以下是子表的检索

    private CustomerAddress customerAddressList;
    private CustomerState customerStates;

    //以下是检索时候的几个传递检索条件的值，数据库中并无此字段
    private String startdate;
    private String enddate;
    private Integer pages;
    private Integer limits;
    private String isDel;

}
