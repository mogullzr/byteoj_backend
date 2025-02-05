package com.example.backend.utils;

import com.example.backend.models.domain.Lock;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.util.concurrent.TimeUnit;


// 注意@Component要加上让系统扫描到,停用定时任务就把它拿掉!!!!
// @EnableScheduling需要加到BackendApplication.java里
// 1.0一般情况下的使用

// 2.0集群情况下的使用
@Component
public class DistributedLockHandler {

    private static final Logger logger = LoggerFactory.getLogger(DistributedLockHandler.class);
    private final static long LOCK_EXPIRE = 30 * 1000L;// 单个业务持有锁的时间30s，防止死锁

    @Autowired
    private StringRedisTemplate template;

    /**
     * 尝试获取全局锁
     *
     * @param lock
     *            锁的名称
     * @return true 获取成功，false获取失败
     */
    public boolean tryLock(Lock lock) {
        return getLock(lock, LOCK_EXPIRE);
    }



    /**
     * 尝试获取全局锁
     *
     * @param lock
     *            锁的名称
     * @param lockExpireTime
     *            锁的过期
     * @return true 获取成功，false获取失败
     */
    public boolean tryLock(Lock lock, long lockExpireTime) {
        return getLock(lock, lockExpireTime);
    }

    /**
     * 操作redis获取全局锁
     *
     * @param lock
     *            锁的名称
     * @param lockExpireTime
     *            获取成功后锁的过期时间
     * @return true 获取成功，false获取失败
     */
    public boolean getLock(Lock lock, long lockExpireTime) {
        try {
            if (StringUtils.isEmpty(lock.getName()) || StringUtils.isEmpty(lock.getValue())) {
                return false;
            }
            long startTime = System.currentTimeMillis();

            if (!template.hasKey(lock.getName())) {
                ValueOperations<String, String> ops = template.opsForValue();
                ops.set(lock.getName(), lock.getValue(), lockExpireTime, TimeUnit.MILLISECONDS);
                return true;
            } else {// 存在锁
                logger.error("lock is exist!！！");
                return false;
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
            return false;
        }
    }

    /**
     * 释放锁
     */
    public void releaseLock(Lock lock) {
        if (!StringUtils.isEmpty(lock.getName())) {
            template.delete(lock.getName());
        }
    }

}
