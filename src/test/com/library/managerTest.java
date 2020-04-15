package com.library;

import com.library.po.Manager;
import com.library.po.ManagerParams;
import com.library.service.impl.ManagerServiceImpl;
import com.library.service.ManagerService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class managerTest {
    private ManagerService managerService;

    @Before
    public void init(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        managerService = ac.getBean(ManagerServiceImpl.class);
    }

    @Test
    public void testFindUser() {
        ManagerParams managerParams = new ManagerParams();
        managerParams.setManagerCode("m0001");
        managerParams.setPassword("123");
        Manager manager = managerService.findUser(managerParams);
        System.out.println(manager.getManagerName());
    }
}
