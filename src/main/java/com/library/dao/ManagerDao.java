package com.library.dao;

import com.library.po.Manager;
import com.library.po.ManagerParams;

/**
 * 用户Dao层接口
 */
public interface ManagerDao {
    /**
     * 通过账号和密码来查询管理员账户
     */
    public Manager findUser(ManagerParams managerParams);

}
