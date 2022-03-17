package com.feng.controller;

import com.feng.pojo.Books;
import com.feng.service.BooksMapperImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/book")
public class HelloController {
    static int count = 0;
    @Autowired
    @Qualifier("mapper")
    private BooksMapperImpl booksMapper;
    @RequestMapping("/allBooks")
    public String test1(Model model){
        List<Books> books = booksMapper.getBooks();
        HelloController.count = books.size();
        model.addAttribute("Books",books);
        return "/allBooks";
    }
    @RequestMapping("/toAddBook")
    private String test2(){
        return "/addBook";
    }
    @RequestMapping("/addBook")
    public String test3(Books books){
        books.setBookID(HelloController.count+1);
        booksMapper.addBook(books);
        return "redirect:/book/allBooks";
    }
    @RequestMapping("/toUpdateBook/{id}")
    public String test4(@PathVariable int id, Model model){
        Books book = booksMapper.getBook(id);
        model.addAttribute("Gbook",book);
        return "/updateBook";
    }
    @RequestMapping("updateBook")
    public String test5(Books books){
        books.setBookID(HelloController.count+1);
        booksMapper.updateBook(books);
        return "redirect:/book/allBooks";
    }
    @RequestMapping("/delete/{id}")
    public String test6(@PathVariable int id){
        List<Books> books = booksMapper.getBooks();
        HelloController.count = books.size();
        booksMapper.deleteBook(id);
        return "redirect:/book/allBooks";
    }
}
