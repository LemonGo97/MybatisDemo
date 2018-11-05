package com.ambition.util.layui;
/**
 * @Author: ambition
 * @Date: 2018/11/1 0:38
 * @Version 1.0
 */

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.ambition.entity.Customer.Customer;
import com.ambition.entity.Shop.Shop;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @program: MybatisDemo
 * @description: Layui分页
 * @author: ambition
 * @create: 2018-11-01 00:38
 **/

@Data
public class LayuiPageUtils {

    public static String doJSON(String str, Integer num){
        /** 
         * @Description: 实体类Customer的JSON格式化
         * @Param: [obj, num] 
         * @return: java.lang.String 
         * @Author: ambition 
         * @Date: 2018/11/1 
         */
        StringBuilder jsonFactory=new StringBuilder("{\"code\":0,\"msg\":\"\",\"count\":");
        jsonFactory.append(num);
        jsonFactory.append(",\"data\":");
        jsonFactory.append(str);
        jsonFactory.append("}");
        return jsonFactory.toString();
    }
}
