package com.hsp.wechat.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * 微信xml消息解析工具
 * @author hsp
 *
 */
public class MessageUtils {

	/**
	 * map转xml消息
	 * @param map
	 * @return
	 */
	public static String map2XML(Map<String,String> map){
		if(null !=map){
			StringBuffer str=new StringBuffer();
			str.append("<xml>");
			for(Map.Entry<String, String> entry:map.entrySet()){
				str.append("<"+entry.getKey()+">"+"<![CDATA["+entry.getValue()+"]]>"+"</"+entry.getKey()+">");
			}
			str.append("</xml>");
			return str.toString();
		}else{
			return "";
		}
	}
}
