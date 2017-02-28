package edu.group6.library.controller;

import edu.group6.library.model.Account;
import edu.group6.library.service.AccountService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import edu.group6.library.model.Account;
import edu.group6.library.service.AccountService;
import org.apache.log4j.Logger;
import org.springframework.asm.Label;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AccountController {

    private Logger logger = Logger.getLogger(AccountController.class);

    @Autowired
    private AccountService accountService;

    @ResponseBody
    @RequestMapping(value = "newAccount",method = RequestMethod.POST)
    public Map<String,String> newAccount(@ModelAttribute Account account)
    {
        String msg = accountService.newAccount(account);
        Map<String,String> result = new HashMap<String,String>();
        result.put("result",msg);
        logger.info("000");

        if(msg == ("nameExist")){
            result.put("result","nameExist");
        }
        else if(msg == ("idNumExist")){
            result.put("result","idNumExist");
        }
        else if(msg == ("insertSuccess")){
            result.put("result","insertSuccess");
            logger.info("999");
            result.put("yourId",String.valueOf(accountService.returnId(account.getPhone())));
        }
        else if(msg == ("insertSuccess")){
            result.put("result","insertFault");
        }
        return result;
    }
    @ResponseBody
    @RequestMapping(value = "editAccount",method = RequestMethod.POST)
    public Map<String,String> editAccount(@ModelAttribute Account account)
    {
        String msg = accountService.editAccount(account);
        Map<String,String> result = new HashMap<String,String>();
        result.put("result",msg);
        logger.info(msg);
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "searchUser",method = RequestMethod.POST)
    public List<Account> searchUser(@ModelAttribute Account account){
        List<Account> accounts = accountService.searchAccount(account);
        return accounts;
    }

    @ResponseBody
    @RequestMapping(value = "deleteUser",method = RequestMethod.POST)
    public Map<String,String> deleteUser(@RequestParam int id){
        Map<String,String> result = new HashMap<String, String>();
        result.put("result",accountService.deleteAccount(id));
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "getUser",method = RequestMethod.POST)
    public Account getUser(@RequestParam int id){
        Account account = accountService.getAccount(id);
        return account;
    }

    @ResponseBody
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam int usr, @RequestParam String pwd)
    {
        logger.info(pwd);
        Account account = new Account();
        account.setId(usr);
        account.setPassword(pwd);
        return accountService.login(account);
    }
}
