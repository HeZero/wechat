package com.hsp.wechat.utils;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hsp.core.jedis.RedisClientTemplate;

/**
 * token获取缓存工具类
 * @author hsp
 *
 */
@Repository("tokenManager")
public class TokenManager implements ITokenManager {

	@Autowired
	RedisClientTemplate redisClientTemplate;
	
	public static String accessToken="accessToken";
	
	/* (non-Javadoc)
	 * @see com.hsp.wechat.utils.ITokenManager#getAccessToken()
	 */
	@Override
	public String getAccessToken() throws IOException{
		if(redisClientTemplate.exists(accessToken)){
			return redisClientTemplate.get(accessToken);
		}else{
		 String token =	WeChatConnectionUtil.getAccessToken().get("access_token");
		 redisClientTemplate.set(accessToken, token);
		 return token;
		}
	}
	
	/* (non-Javadoc)
	 * @see com.hsp.wechat.utils.ITokenManager#clearAccessToken()
	 */
	@Override
	public void clearAccessToken(){
		redisClientTemplate.expire(accessToken, 0);
	}
	
	/* (non-Javadoc)
	 * @see com.hsp.wechat.utils.ITokenManager#setToken(java.lang.String)
	 */
	@Override
	public void setToken(String token){
		redisClientTemplate.set(accessToken, token);
		redisClientTemplate.expire(accessToken, 7200);
	}
}
