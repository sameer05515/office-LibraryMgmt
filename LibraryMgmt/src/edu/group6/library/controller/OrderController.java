package edu.group6.library.controller;

import edu.group6.library.model.Book;
import edu.group6.library.model.Order;
import edu.group6.library.model.returnBook;
import edu.group6.library.service.BookService;
import edu.group6.library.service.OrderService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class OrderController {

    private Logger logger = Logger.getLogger(OrderController.class);

    @Autowired
    private OrderService orderService;

    @Autowired
    private BookService bookService;

    @ResponseBody
    @RequestMapping(value = "lendBook",method = RequestMethod.POST)
    public int searchBook(@ModelAttribute Order to)
    {
        int i = bookService.lend(to.getBookId());
        if(i==1)
        {
            Order order = new Order();
            order.setBookId(to.getBookId());
            order.setUserId(to.getUserId());
            order.setState(1);
            return orderService.insert(order);
        }
        return -1;
    }

    @ResponseBody
    @RequestMapping(value = "returnBook",method = RequestMethod.POST)
    public int returnBook(@ModelAttribute returnBook to)
    {
        returnBook order = new returnBook();
        order.setIsbn(to.getIsbn());
        order.setUserId(to.getUserId());
        return orderService.returnBook(order);
    }

    @ResponseBody
    @RequestMapping(value = "searchOrder",method = RequestMethod.POST)
    public List<Order> searchOrder()
    {
        logger.info("llll");
        return orderService.searchOrder();
    }
}
