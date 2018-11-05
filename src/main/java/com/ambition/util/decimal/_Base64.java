package com.ambition.util.decimal;

import java.io.UnsupportedEncodingException;
import java.util.Base64;

public class _Base64 {

    public static String encode_base64(String str) {
        if (str == null || str.length() == 0) {
            System.out.println("请勿输入空");
            return null;
        } else {

            return Base64.getEncoder().encodeToString(str.getBytes());
        }
    }

    public static String decode_base64(String str) {
        String tmp = null;
        if (str == null || str.length() == 0) {
            System.out.println("请勿输入空");
            return null;
        } else {
            try {
                tmp = new String(Base64.getDecoder().decode(str), "utf-8");
            } catch (UnsupportedEncodingException e) {
                tmp = "解码程序异常";
                System.out.println(tmp + e);
            }
            return tmp;
        }
    }

}
