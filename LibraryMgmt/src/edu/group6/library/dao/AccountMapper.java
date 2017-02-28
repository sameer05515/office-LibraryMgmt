package edu.group6.library.dao;

import edu.group6.library.model.Account;

import java.util.List;


import java.util.List;

public interface AccountMapper {
    String selectname(Integer id);

    int deleteByPrimaryKey(Integer id);

    int insert(Account record);

    int insertSelective(Account record);

    List<Account> selectLogin(Account account);

    List<Account> selectByName(String name);

    List<Account> selectByPhone(String phone);

    List<Account> selectByIdNum(String idNum);

    Account returnId(String phone);

    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);

    List<Account> search(Account account);

    Account selectByPrimaryKey(int id);
}