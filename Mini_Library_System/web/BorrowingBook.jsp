
<%-- 
    Document   : BorrowingBook
    Created on : May 8, 2019, 3:05:34 PM
    Author     : user
--%>

<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Borrow Page</title>
    </head>
    <body>
        <div id="mainlayout" align="center">
            <div id="container" style="width: 800px;">
                <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                <div id="content">
                    <sql:setDataSource var="booksList" driver="com.mysql.jdbc.Driver"
                                       url="jdbc:mysql://localhost:3306/mini_library_system"
                                       user="root"  password="admin"/>

                    <sql:query dataSource="${booksList}" var="result">
                        select * from bookregistration where bookID=?;
                        <sql:param value="${param.bookID}"/>
                    </sql:query>

                    <c:forEach var="row" items="${result.rows}">
                        <h2 style="text-align: center;">Borrow Book - ${row.bookID}</h2>
                        <table class="table table-striped">
                            <tbody>
                                <tr>
                                    <th scope="row">Book Title</th>
                                    <td>${row.bookTitle}</td>
                                </tr>
                                <tr>
                                    <th scope="row">Author</th>
                                    <td>${row.author}</td>
                                </tr>
                                <tr>
                                    <th scope="row">Publisher</th>
                                    <td>${row.publisher}</td>
                                </tr>
                                <tr>
                                    <th scope="row">Year</th>
                                    <td>${row.year}</td>
                                </tr>                           
                            </tbody>
                        </c:forEach>
                    </table> 
                    <sql:query dataSource="${booksList}" var="result">
                        select * from borrowerbook;
                    </sql:query>

                    <form action="BorrowingBook1.jsp" method="post">
                        <table class="table table-striped">
                            <c:forEach var="row" items="${result.rows}"> 
                                <tr>
                                    <td><label>Matric No :</label></td>
                                    <td><input type="text" name="txtmatricno" size="50"/></td>
                                </tr>
                                <tr>
                                    <th><label>Book Id</label></th>
                                    <td><input type="text" value="${row.bookID}" name="txtbookid" size="50"/></td>
                                </tr>
                                <tr>
                                    <th><label>Book Title</label></th>
                                    <td><input type="text" value="${row.bookTitle}" name="txtbookTitle" size="50"/></td>
                                </tr>
                                <tr>
                                    <td><label>Date :</label></td>
                                    <td><input type="text" name="txtdate" size="50" placeholder="dd/mm/yy - dd/mm/yy(3 days only)"/></td>
                                </tr>
                                <tr>
                                    <td><label>Status:</label></td>
                                    <td><select  name="txtyear" class="dropdown-el">
                                            <option selected="" disabled="">In progress</option>
                                            <option value="progress">In progress</option>
                                        </select></td>
                                </tr>
                            </c:forEach>
                        </table> 
                    </form>
                    <a href="ListApprove.jsp" class="button btn">Submit</a>
                    <a href="ListBookStudent.jsp" class="button btn">Reset</a>
                </div>
                <div id="footer" >
                    <b>&COPY;minilibrary</b>
                </div>
            </div>
        </div>
    </body>
</html>