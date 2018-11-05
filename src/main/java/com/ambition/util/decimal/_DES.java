package com.ambition.util.decimal;


import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import java.security.SecureRandom;

    /**
     * @Description: DES加密方法
     * @Param:
     * @return:
     * @Author: ambition
     * @Date: 2018/11/4
     */

public class _DES {
    static SecureRandom random = new SecureRandom();

    public static String encode_des(String key, String str) throws Exception {
        if (key == null) {
            return null;
        } else if (str == null) {
            return null;
        } else {
            DESKeySpec keySpec = new DESKeySpec(key.getBytes());
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("des");
            SecretKey secretKey = keyFactory.generateSecret(keySpec);
            Cipher cipher = Cipher.getInstance("des");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey, random);
            byte[] cipherData = cipher.doFinal(str.getBytes());
            String res = new BASE64Encoder().encode(cipherData);
            return res;
        }

    }

    public static String decode_des(String key, String str) throws Exception {
        if (key == null) {
            return null;
        } else if (str == null) {
            return null;
        } else {
            Cipher cipher = Cipher.getInstance("des");
            DESKeySpec keySpec = new DESKeySpec(key.getBytes());
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("des");
            SecretKey secretKey = keyFactory.generateSecret(keySpec);
            cipher.init(Cipher.DECRYPT_MODE, secretKey, random);
            byte[] str1 = new BASE64Decoder().decodeBuffer(str);
            byte[] plainData = cipher.doFinal(str1);
            return new String(plainData);
        }
    }
}
