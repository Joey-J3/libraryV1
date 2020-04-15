package com.library.po;

public class ManagerParams {
    private String managerCode;
    private String password;

    public ManagerParams(String managerCode, String password) {
        this.managerCode = managerCode;
        this.password = password;
    }

    public ManagerParams() {

    }

    public String getManagerCode() {
        return managerCode;
    }

    public void setManagerCode(String managerCode) {
        this.managerCode = managerCode;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
