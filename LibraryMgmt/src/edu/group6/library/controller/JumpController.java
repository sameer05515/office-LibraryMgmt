package edu.group6.library.controller;

import edu.group6.library.model.Book;
import edu.group6.library.service.BookService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JumpController {

    private Logger logger = Logger.getLogger(JumpController.class);

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index()
    {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login()
    {
        return "login";
    }

    @RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
    public String adminLogin()
    {
        return "adminLogin";
    }

    @RequestMapping(value = "/userManagement", method = RequestMethod.GET)
    public String userManagement()
    {
        return "manage/userManagement";
    }
    @RequestMapping(value = "/orderManagement", method = RequestMethod.GET)
    public String orderManagement()
    {
        return "manage/orderManagement";
    }
    @RequestMapping(value = "/BookManagement", method = RequestMethod.GET)
    public String BookManagement()
    {
        return "manage/BookManagement";
    }
    @RequestMapping(value = "/userEditPage", method = RequestMethod.GET)
    public String userEditPage()
    {
        return "manage/userEditPage";
    }

    @RequestMapping(value = "/NewBook", method = RequestMethod.GET)
    public String NewBook()
    {
        return "manage/NewBook";
    }

    @RequestMapping(value = "/EditBook", method = RequestMethod.GET)
    public String EditBook()
    {
        return "manage/EditBook";
    }

    @RequestMapping(value = "/regpage", method = RequestMethod.GET)
    public String regpage()
    {
        return "regpage";
    }

    @RequestMapping(value = "/adminregpage", method = RequestMethod.GET)
    public String adminregpage()
    {
        return "adminregpage";
    }

    @RequestMapping(value = "/temp", method = RequestMethod.GET)
    public String temp()
    {
        return "temp";
    }

    @RequestMapping(value = "reader", method = RequestMethod.GET)
    public String reader()
    {
        return "reader/reader";
    }
}
