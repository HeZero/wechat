package com.hsp.wechat.enums;

import java.util.HashMap;
import java.util.Map;

public class BaseEnums {

	public static Map<String,String> map=new HashMap<>();
	
	public static String getKeyMap(String key){
		return map.get(key);
	}
}
