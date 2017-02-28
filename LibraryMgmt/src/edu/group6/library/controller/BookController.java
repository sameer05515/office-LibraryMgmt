package edu.group6.library.controller;

import edu.group6.library.model.Book;
import edu.group6.library.service.BookService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BookController {

    private Logger logger = Logger.getLogger(BookController.class);

    @Autowired
    private BookService bookService;

    @ResponseBody
    @RequestMapping(value = "searchBook",method = RequestMethod.POST)
    public List<Book> searchBook(@ModelAttribute Book book)
    {
        List<Book> books = bookService.search(book);
        return books;
    }

    @ResponseBody
    @RequestMapping(value = "getBook",method = RequestMethod.POST)
    public Book getBook(@RequestParam int id)
    {
        Book book = bookService.getBookById(id);
        return book;
    }

    @ResponseBody
    @RequestMapping(value = "createBook",method = RequestMethod.POST)
    public int createBook(@ModelAttribute Book book)
    {
        return bookService.newBook(book);
    }

    @ResponseBody
    @RequestMapping(value = "updateBook",method = RequestMethod.POST)
    public int updateBook(@ModelAttribute Book book)
    {
        return bookService.updateBook(book);
    }
}
