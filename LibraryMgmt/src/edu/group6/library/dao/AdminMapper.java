package edu.group6.library.dao;

import edu.group6.library.model.Admin;

import java.util.List;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    List<Admin> selectByPrimaryKey(String id);

    List<Admin> selectByNickname(String nickname);

    List<Admin> selectByEmail(String email);

    List<Admin> selectByPhone(String phone);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);

    List<Admin> selectLoginAdmin(Admin admin);
}