package com.feng.mapper;

import com.feng.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BooksMapper {
    void addBook(Books books);
    void deleteBook(@Param("bookID") int bookID);
    void updateBook(Books books);
    Books getBook(int bookID);
    List<Books> getBooks();
}
