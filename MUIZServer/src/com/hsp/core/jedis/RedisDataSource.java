package com.hsp.core.jedis;

import redis.clients.jedis.Jedis;

public interface RedisDataSource {

	/**
	 * 取得redis客户端
	 * @return
	 */
	Jedis getRedisClient();
	/**
	 * 资源返回给pool
	 * @param shardedJedis
	 */
	void returnResource(Jedis shardedJedis);
	/**
	 * 出现异常后资源返回给pool
	 * @param shardedJedis
	 * @param broken
	 */
	void returnResource(Jedis shardedJedis,boolean broken);
}
