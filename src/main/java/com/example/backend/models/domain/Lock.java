package com.example.backend.models.domain;
 
/**
 * 全局锁，包括锁的名称 Created by zuoguobin on 2017/4/1.
 */
public class Lock {
    private String name;
    private String value;
 
    public Lock(String name, String value) {
        this.name = name;
        this.value = value;
    }
 
    public String getName() {
        return name;
    }
 
    public String getValue() {
        return value;
    }
}