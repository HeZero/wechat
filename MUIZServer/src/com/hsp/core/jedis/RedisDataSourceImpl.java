package com.hsp.core.jedis;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

@Repository("redisDataSource")
public class RedisDataSourceImpl implements RedisDataSource{

	private static final Logger log=Logger.getLogger(RedisDataSourceImpl.class);
	
	@Autowired
	private JedisPool shardedJedisPool;
	
	@Override
	public Jedis getRedisClient() {
		Jedis sharedJedis=null;
		try {
			sharedJedis = shardedJedisPool.getResource();
			return sharedJedis;
		} catch (Exception e) {
			if(null !=sharedJedis){
				sharedJedis.close();
			}
			log.error("redis客户端获取异常",e);
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void returnResource(Jedis shardedJedis) {
		// TODO Auto-generated method stub
		shardedJedisPool.close();
	}

	@Override
	public void returnResource(Jedis shardedJedis, boolean broken) {
		 shardedJedis.close();
	}

}
