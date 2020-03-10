package com.blog.util;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * @Package: com.blog.util
 * @Author: sxf
 * @Date: 2020-3-9
 * @Description:
 */
public class CryptographyUtil {
   public static String md5(String str,String salt){
       return new Md5Hash(str, salt).toString();
   }

    public static void main(String[] args) {
        String password = "123456";
        System.out.println("Md5º”√‹£∫" + md5(password,"java1234"));
    }
}
