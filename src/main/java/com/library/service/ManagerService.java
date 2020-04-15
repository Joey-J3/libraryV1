package com.library.service;

import com.library.po.Manager;
import com.library.po.ManagerParams;

/**
 * 用户Service层接口
 */
public interface ManagerService {
    //通过账号密码查询用户
    public Manager findUser(ManagerParams managerParams);
}
