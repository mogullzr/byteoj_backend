package com.example.backend.aop;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

@Aspect
@Component
public class LockAspect {

    private final Lock lock = new ReentrantLock();

    @Before("@annotation(com.example.backend.aop.ConcurrentInsert)")
    public void lock() {
        lock.lock();
    }

    @After("@annotation(com.example.backend.aop.ConcurrentInsert)")
    public void unlock() {
        lock.unlock();
    }
}