package edu.group6.library.service;

import edu.group6.library.model.Order;
import edu.group6.library.model.returnBook;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
    int insert(Order order);

    int returnBook(returnBook order);

    List<Order> searchOrder();
}
