package edu.group6.library.dao;

import edu.group6.library.model.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository(value = "bookMapper")
public interface BookMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(Long id);

    Book selectById(Long id);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKeyWithBLOBs(Book record);

    int updateByPrimaryKey(Book record);

    List<Book> search(Book book);

    int lend(Long bookId);
}