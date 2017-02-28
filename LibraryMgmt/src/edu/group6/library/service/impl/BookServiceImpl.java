package edu.group6.library.service.impl;

import edu.group6.library.model.Book;
import edu.group6.library.dao.BookMapper;
import edu.group6.library.model.returnBook;
import edu.group6.library.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    public int newBook(Book book){
        return bookMapper.insert(book);
    }

    public Book getBookById(int id){
        return bookMapper.selectById((long) id);
    }

    public List<Book> search(Book book) {
        return bookMapper.search(book);
    }

    public int updateBook(Book book) {
        return bookMapper.updateByPrimaryKey(book);
    }

    public int lend(Long bookId) {
        return bookMapper.lend(bookId);
    }
}
