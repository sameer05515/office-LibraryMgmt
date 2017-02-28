package edu.group6.library.dao;

import edu.group6.library.model.Order;
import edu.group6.library.model.returnBook;

import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    int returnBook(returnBook returnBook);

    List<Order> selectAll();
}