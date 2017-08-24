package com.hsp.wechat.constant;

import org.apache.log4j.Logger;

import com.hsp.core.utils.PropertiesReader;

public class AccessConfig {

	private static Logger log=Logger.getLogger(AccessConfig.class);
	
	public static final String filename="wechat.properties";
	
	/**
	 * 微信接入token常量
	 */
	public static  String token="token";
	
	public static String appId="appId";
	
	public static String appSecret="appSecret";
	
	public static String accessTokenUrl="url_accessToken";
	
	static{
		try {
			token=PropertiesReader.getProperties(filename, token);
			appId=PropertiesReader.getProperties(filename, appId);
			appSecret=PropertiesReader.getProperties(filename,"appSecret");
			accessTokenUrl=PropertiesReader.getProperties(filename, accessTokenUrl);
		} catch (Exception e) {
			log.error(">>>>>>>>>>>>>配置文件读取失败<<<<<<<<<<<<<<<",e);
		}
	}
}
