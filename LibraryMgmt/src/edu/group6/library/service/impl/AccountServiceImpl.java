package edu.group6.library.service.impl;

import edu.group6.library.model.Account;
import edu.group6.library.dao.AccountMapper;
import edu.group6.library.service.AccountService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AccountServiceImpl implements AccountService {

    private Logger logger = Logger.getLogger(AccountServiceImpl.class);

    @Autowired
    private AccountMapper accountMapper;

    public String newAccount(Account account){

        int getIdNumSize = accountMapper.selectByIdNum(account.getIdNum()).size();
        int getPhoneSize = accountMapper.selectByPhone(account.getPhone()).size();
        logger.info("111");
        if(getIdNumSize != 0){
            logger.info("333");
            return "idNumExist";
        }
        else if(getPhoneSize != 0){
            logger.info("333");
            return "phoneExist";
        }
        else if(accountMapper.insert(account) == 1){
            logger.info("444");
            return "insertSuccess";
        }
        else{
            logger.info("555");
            return "insertFault";
        }
    }


    public String editAccount(Account account){

        List<Account> getIdNumSize = accountMapper.selectByIdNum(account.getIdNum());
        List<Account> getPhoneSize = accountMapper.selectByPhone(account.getPhone());
        logger.info("111");
        if(getIdNumSize.size() != 0){
            if(getIdNumSize.get(0).getId()!=account.getId()) {
                return "idNumExist";
            }
        }
        if(getPhoneSize.size() != 0){
            if(getPhoneSize.get(0).getId()!=account.getId())
            {
                return "phoneExist";
            }
        }
        if(accountMapper.updateByPrimaryKeySelective(account) == 1){
            return "insertSuccess";
        }
        else{
            return "insertFault";
        }
    }

    public Account getAccount(int id) {
        return accountMapper.selectByPrimaryKey(id);
    }

    public List<Account> searchAccount(Account account) {
        return accountMapper.search(account);
    }

    public String deleteAccount(int id) {
        int effectedLineNum = accountMapper.deleteByPrimaryKey(id);
        if(effectedLineNum == 1)
        {
            return "SUCCESS";
        }
        return "FAILED";
    }

    public String login(Account account) {
        List<Account> accounts = accountMapper.selectLogin(account);

        logger.info(accounts.size());
        if (accounts.size() == 0)
        {
            return "USER_NOT_EXIST";
        }
        else if(!accounts.get(0).getPassword().equals(account.getPassword()))
        {
            return "WRONG_PASSWORD";
        }
        return "SUCCESS";
    }
    public int returnId(String phone){
        logger.info(phone);
        return accountMapper.returnId(phone).getId();

    }
}

