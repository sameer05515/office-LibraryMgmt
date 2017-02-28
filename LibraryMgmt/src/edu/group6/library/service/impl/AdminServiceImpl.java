package edu.group6.library.service.impl;

import edu.group6.library.model.Admin;
import edu.group6.library.dao.AdminMapper;
import edu.group6.library.service.AdminService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AdminServiceImpl implements AdminService{

    private Logger logger = Logger.getLogger(AdminServiceImpl.class);

    @Autowired
    private AdminMapper adminMapper;

    public String newAdmin(Admin admin){
        int getNicknameSize = adminMapper.selectByNickname(admin.getNickname()).size();
        int getEmailSize = adminMapper.selectByEmail(admin.getEmail()).size();
        int getPhoneSize = adminMapper.selectByPhone(admin.getPhone()).size();
        if(getNicknameSize != 0){
            logger.info("222");
            return "nickNameExist";
        }
        else if(getEmailSize != 0){
            logger.info("333");
            return "emailExist";
        }
        else if(getPhoneSize != 0){
            logger.info("333");
            return "phoneExist";
        }
        else if(adminMapper.insert(admin) == 1){
            logger.info("444");
            return "insertSuccess";
        }
        else{
            logger.info("555");
            return "insertFault";
        }
    }

    public String login_as_admin(Admin admin) {
        List<Admin> res = adminMapper.selectByPrimaryKey(admin.getNickname());
        if(res.size()!=1)
        {
            return "USER_NOT_EXIST";
        }
        else
        {
            res = adminMapper.selectLoginAdmin(admin);
            if(res.size()==1)
            {
                return "SUCCESS";
            }
        }
        return "WRONG_PASSWORD";
    }
}
