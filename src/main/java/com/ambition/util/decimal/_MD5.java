package com.ambition.util.decimal;

import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class _MD5 {
    static MessageDigest md;

    public static String encode_md5(String str) {
        if (str == null || str.length() == 0) {
            System.out.println("请勿输入空");
            return null;
        } else {
            try {
                md = MessageDigest.getInstance("md5");
                byte m5[] = md.digest(str.getBytes());
                BASE64Encoder encoder = new BASE64Encoder();
                return encoder.encode(m5);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }

        return null;
    }

}
