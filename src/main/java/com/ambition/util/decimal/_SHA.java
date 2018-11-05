package com.ambition.util.decimal;

import java.math.BigInteger;
import java.security.MessageDigest;

public class _SHA {
    public static String encode_sha_1(String str) {
        BigInteger sha = null;
        byte[] inputData = str.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA");
            messageDigest.update(inputData);
            sha = new BigInteger(messageDigest.digest());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sha.toString(32);
    }
}
