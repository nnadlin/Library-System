/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.borrower.MLS;

/**
 *
 * @author user
 */
public class Borrower {
    private String matricNo;
    private int bookId;
    private String bookTitle;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    private String status;

    public String getMatricNo() {
        return matricNo;
    }

    public void setMatricNo(String matricNo) {
        this.matricNo = matricNo;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    private String date;
}
