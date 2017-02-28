package edu.group6.library.service.impl;

import edu.group6.library.model.Order;
import edu.group6.library.dao.OrderMapper;
import edu.group6.library.model.returnBook;
import edu.group6.library.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    public int insert(Order order) {
        return orderMapper.insert(order);
    }

    public int returnBook(returnBook order) {
        return orderMapper.returnBook(order);
    }

    public List<Order> searchOrder() {
        return orderMapper.selectAll();
    }
}
