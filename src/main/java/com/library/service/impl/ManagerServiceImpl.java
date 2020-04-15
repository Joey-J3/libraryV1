package com.library.service.impl;

import com.library.dao.ManagerDao;
import com.library.po.Manager;
import com.library.po.ManagerParams;
import com.library.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("managerService")
@Transactional
public class ManagerServiceImpl implements ManagerService {
    //注入UserDao
    @Autowired
    private ManagerDao managerDao;

    /**
     * 根据用户名密码查找相应的用户
     * @param managerParams 将用户名密码封装到managerParams中
     * @return
     */
    @Override
    public Manager findUser(ManagerParams managerParams) {
        Manager manager = this.managerDao.findUser(managerParams);
        return manager;
    }
}
