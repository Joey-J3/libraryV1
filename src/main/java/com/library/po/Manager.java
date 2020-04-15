package com.library.po;

import java.io.Serializable;

public class Manager implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer managerId;      //管理员id
    private String managerCode;     //管理员账号
    private String managerName;     //管理员名称
    private String password;        //管理员密码

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public String getManagerCode() {
        return managerCode;
    }

    public void setManagerCode(String managerCode) {
        this.managerCode = managerCode;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
