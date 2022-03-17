package com.feng.service;

import com.feng.mapper.BooksMapper;
import com.feng.pojo.Books;

import java.util.List;

public class BooksMapperImpl implements BooksMapper {
    private BooksMapper booksMapper;

    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    @Override
    public void addBook(Books books) {
        this.booksMapper.addBook(books);
    }

    @Override
    public void deleteBook(int bookID) {
        this.booksMapper.deleteBook(bookID);
    }

    @Override
    public void updateBook(Books books) {
        this.booksMapper.updateBook(books);
    }

    @Override
    public Books getBook(int bookID) {
        return this.booksMapper.getBook(bookID);
    }

    @Override
    public List<Books> getBooks() {
        return this.booksMapper.getBooks();
    }
}
