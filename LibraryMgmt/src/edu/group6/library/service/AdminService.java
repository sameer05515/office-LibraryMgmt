package edu.group6.library.service;

import edu.group6.library.dao.AdminMapper;
import edu.group6.library.model.Admin;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.stereotype.Service;

@Service
public interface AdminService {

    String newAdmin(Admin admin);


    String login_as_admin(Admin admin);
}
