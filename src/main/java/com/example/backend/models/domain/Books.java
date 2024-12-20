package com.example.backend.models.domain;

import lombok.Data;

@Data
public class Books {
    private int bookId;
    private String bookName;
    private int bookCount;
    private String bookDetail;
 
    public Books() {
    }
 
    public Books(int bookId, String bookName, int bookCount, String bookDetail) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookCount = bookCount;
        this.bookDetail = bookDetail;
    }
    @Override
    public String toString() {
        return "Books{" +
                "bookId=" + bookId +
                ", bookName='" + bookName + '\'' +
                ", bookCount=" + bookCount +
                ", bookDetail='" + bookDetail + '\'' +
                '}';
    }
}