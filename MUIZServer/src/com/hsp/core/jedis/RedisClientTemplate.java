package com.hsp.core.jedis;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import redis.clients.jedis.Jedis;

@Repository("redisClientTemplate")
public class RedisClientTemplate {
	
	private static final Logger log = LoggerFactory.getLogger(RedisClientTemplate.class);
	
	@Autowired
    private RedisDataSource RedisDataSource;
	
	public void disconnect() {
        Jedis Jedis = RedisDataSource.getRedisClient();
        Jedis.disconnect();
    }
	/**
     * 设置单个值
     * 
     * @param key
     * @param value
     * @return
     */
    public String set(String key, String value) {
        String result = null;

        Jedis Jedis = RedisDataSource.getRedisClient();
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.set(key, value);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    /**
     * 获取单个值
     * 
     * @param key
     * @return
     */
    public String get(String key) {
        String result = null;
        Jedis Jedis = RedisDataSource.getRedisClient();
        if (Jedis == null) {
            return result;
        }

        boolean broken = false;
        try {
            result = Jedis.get(key);

        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    public Boolean exists(String key) {
        Boolean result = false;
        Jedis Jedis = RedisDataSource.getRedisClient();
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.exists(key);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    public String type(String key) {
        String result = null;
        Jedis Jedis = RedisDataSource.getRedisClient();
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.type(key);

        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    /**
     * 在某段时间后失效
     * 
     * @param key
     * @param seconds
     * @return
     */
    public Long expire(String key, int seconds) {
        Long result = null;
        Jedis Jedis = RedisDataSource.getRedisClient();
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.expire(key, seconds);

        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    /**
     * 在某个时间点失效
     * 
     * @param key
     * @param unixTime
     * @return
     */
    public Long expireAt(String key, long unixTime) {
        Long result = null;
        Jedis Jedis = RedisDataSource.getRedisClient();
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.expireAt(key, unixTime);

        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    public Long ttl(String key) {
        Long result = null;
        Jedis Jedis = RedisDataSource.getRedisClient();
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.ttl(key);

        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    public boolean setbit(String key, long offset, boolean value) {

        Jedis Jedis = RedisDataSource.getRedisClient();
        boolean result = false;
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.setbit(key, offset, value);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    public boolean getbit(String key, long offset) {
        Jedis Jedis = RedisDataSource.getRedisClient();
        boolean result = false;
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;

        try {
            result = Jedis.getbit(key, offset);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    public long setRange(String key, long offset, String value) {
        Jedis Jedis = RedisDataSource.getRedisClient();
        long result = 0;
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.setrange(key, offset, value);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }

    public String getRange(String key, long startOffset, long endOffset) {
        Jedis Jedis = RedisDataSource.getRedisClient();
        String result = null;
        if (Jedis == null) {
            return result;
        }
        boolean broken = false;
        try {
            result = Jedis.getrange(key, startOffset, endOffset);

        } catch (Exception e) {
            log.error(e.getMessage(), e);
            broken = true;
        } finally {
        	RedisDataSource.returnResource(Jedis, broken);
        }
        return result;
    }
}
