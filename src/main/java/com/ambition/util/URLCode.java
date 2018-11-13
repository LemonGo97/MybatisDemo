package com.ambition.util;
/**
 * @Author: ambition
 * @Date: 2018/11/13 12:38
 * @Version 1.0
 */

import java.io.UnsupportedEncodingException;

/**
 * @program: MybatisDemo
 * @description: URL连接的转码和编码
 * @author: ambition
 * @create: 2018-11-13 12:38
 **/

public class URLCode {
    public static String getURLEncoderString(String str) {//url编码
        String result = "";
        if (null == str) {
            return "";
        }
        try {
            result = java.net.URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static String URLDecoderString(String str) {//url解码
        String result = "";
        if (null == str) {
            return "";
        }
        try {
            result = java.net.URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }
}
