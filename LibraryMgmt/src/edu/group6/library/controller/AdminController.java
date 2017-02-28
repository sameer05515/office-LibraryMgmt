package edu.group6.library.controller;

import edu.group6.library.model.Account;
import edu.group6.library.model.Admin;
import edu.group6.library.service.AccountService;
import edu.group6.library.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import edu.group6.library.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class AdminController {
    private Logger logger = Logger.getLogger(AccountController.class);
    @Autowired
    private AdminService adminService;

    @ResponseBody
    @RequestMapping(value = "login_as_admin",method = RequestMethod.POST)
    public Map<String,String> login_as_admin(@ModelAttribute Admin admin)
    {
        String msg = adminService.login_as_admin(admin);
        Map<String,String> result = new HashMap<String, String>();
        result.put("result",msg);
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "newAdmin",method = RequestMethod.POST)
    public Map<String,String> newAdmin(@ModelAttribute Admin admin)
    {
        String msg = adminService.newAdmin(admin);
        Map<String,String > result = new HashMap<String, String>();

        if(msg == ("nickNameExist")){
            result.put("result","nickNameExist");
        }
        else if(msg == ("emailExist")){
            result.put("result","emailExist");
        }
        else if(msg == ("phoneExist")){
            result.put("result","phoneExist");
        }
        else if(msg == ("insertSuccess")){
            result.put("result","insertSuccess");
        }
        else if(msg == ("insertSuccess")){
            result.put("result","insertFault");
        }
        return result;
    }
}
