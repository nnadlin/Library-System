/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.borrower.MLS;

import com.login.MLS.DBConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class borrowerDAO {

    private final Connection connection;
    private int result;

    public borrowerDAO() {
        connection = DBConnection.getConnection();

    }

    public int addBorrower(Borrower borrowbook) {
        try {
            String mySqlQuery = "INSERT INTO borrowerbook(matricNo,bookId,bookTitle,date) VALUE (?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, borrowbook.getMatricNo());
            myPs.setInt(2, borrowbook.getBookId());
            myPs.setString(3, borrowbook.getBookTitle());
            myPs.setString(3, borrowbook.getDate());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return result;

    }

    public List<Borrower> retrieveAllBorrower() {
        List<Borrower> borrowerAll = new ArrayList<Borrower>();
        Borrower borrowbook;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from borrowbook";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                borrowbook = new Borrower();
                borrowbook.setMatricNo(myRs.getString(1));
                borrowbook.setBookId(myRs.getInt(2));
                borrowbook.setBookTitle(myRs.getString(3));
                borrowbook.setDate(myRs.getString(4));
                borrowerAll.add(borrowbook);
            }

        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return borrowerAll;
    }

    public Borrower retrieveOneBorrower(String txtmatric ) {
        Borrower borrowbook = new Borrower();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from borrowbook where matricNo=" + txtmatric;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {

                borrowbook.setMatricNo(myRs.getString(1));
                borrowbook.setBookId(myRs.getInt(2));
                borrowbook.setBookTitle(myRs.getString(3));
                borrowbook.setDate(myRs.getString(4));
            }

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return borrowbook;
    }

    public int updateBorrower(Borrower borrowbook) {
        try {

            String mySqlQuery = "UPDATE borrowbook SET matricNo=?,bookId=?,bookTitle=? date=? WHERE matricNo=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, borrowbook.getMatricNo());
            myPs.setInt(2, borrowbook.getBookId());
            myPs.setString(3, borrowbook.getBookTitle());
            myPs.setString(4, borrowbook.getDate());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is; " + e);
        }
        return result;
    }

    public int deleteBorrower(String matricNo) {
        try {
            String mySqlQuery = "delete from borrowbook where matricNo=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, matricNo);
            result = myPs.executeUpdate();

        } catch (Exception e) {
            System.out.println("Exception is ; " + e);
        }
        return result;
    }
}
