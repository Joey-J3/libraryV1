package com.library.controller;

import com.library.po.Manager;
import com.library.po.ManagerParams;
import com.library.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class ManagerController {
    //依赖注入
    @Autowired
    private ManagerService managerService;

    /**
     * 用户登录
     */
    @RequestMapping(value = "/login.action",method = RequestMethod.POST)
    public String login(String managerCode, String password, Model model, HttpSession session){
        //通过账户密码查询用户
        ManagerParams managerParams = new ManagerParams(managerCode,password);
        Manager manager = managerService.findUser(managerParams);
        if (manager != null){
            //将用户对象添加到Session
            session.setAttribute("MANAGER_SESSION", manager);
            //跳转到主页面
            return "redirect:list.action";
        }
        model.addAttribute("msg","用户名或密码错误，请重新登录！");
        //返回登录页面
        return "login";
    }

    /**
     * 其它类中跳转到图书管理页面的方法
     */
    @RequestMapping(value = "/toList.action")
    public String toList(){
        return "library";
    }

    /**
     * 退出登录
     */
    @RequestMapping(value = "/logout.action")
    public String logout(HttpSession session){
        //清除Session
        session.invalidate();
        //重定向到登陆界面
        return "redirect:login.action";
    }

    /**
     * 向用户登录页面跳转
     * @return
     */
    @RequestMapping(value = "/login.action", method = RequestMethod.GET)
    public String toLogin() {
        return "login";
    }



















    //old
   /* @RequestMapping("/selectUser")
    public String selectUser(HttpServletRequest request){
        String id = request.getParameter("id");
        System.out.println("id="+id);
        return "success";
    }

    *//**
     * 向用户注册页面跳转
     *//*
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "register";
    }

    *//**
     * 接受用户注册信息
     *//*
    @RequestMapping("/registerUser")
    public String registerUser(User user){
        String username = user.getUsername();
        String password = user.getPassword();
        System.out.println("username="+username);
        System.out.println("password="+password);
        return "success";
    }*/
}
