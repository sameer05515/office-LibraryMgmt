package edu.group6.library.service;

import edu.group6.library.model.Book;
import edu.group6.library.model.returnBook;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BookService {

    int newBook(Book book) throws SecurityException;

    Book getBookById(int id) throws SecurityException;

    List<Book> search(Book book);

    int updateBook(Book book);

    int lend(Long bookId);
}
