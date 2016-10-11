package com.icynara.onlineexam.utils;

import java.security.MessageDigest;

import sun.misc.BASE64Encoder;
/**
 * MD5加密
 * @ClassName:MD5EncodingUtil.java
 * @Description:TODO(等我喝醉了再来修复。) 
 * @author:remix
 * @version:V1.0  
 * @Date:2016年9月2日 下午3:35:39
 */
public class MD5EncodingUtil {
	public static String getMD5(String message){
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] b = md.digest(message.getBytes());
			return new BASE64Encoder().encode(b);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	public static void main(String[] args) {
		System.out.println(getMD5("admin"));
	}
}
