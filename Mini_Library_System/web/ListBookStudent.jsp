<%-- 
    Document   : ListBookSystem
    Created on : May 28, 2019, 1:18:58 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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
        <title>List Approve</title>
    </head>
    <body>
        <div id="mainlayout" align="center">
            <div id="container" style="width: 800px">
                <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                <div id="content">
                    <h2 style="text-align: center;">List of Book</h2>
                    <sql:setDataSource var="booksList" driver="com.mysql.jdbc.Driver"
                                       url="jdbc:mysql://localhost:3306/mini_library_system"
                                       user="admin"  password="root"/>
                    <sql:query dataSource="${booksList}" var="result">
                        SELECT * from bookregistration;
                    </sql:query>

                    <table class="table table-striped">
                        <tr>
                            <th>Book Id</th>
                            <th>Book Title</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Year</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach var="row" items="${result.rows}">
                            <tr>
                                <td><c:out value="${row.bookID}"/></td>
                                <td><c:out value="${row.bookTitle}"/></td>
                                <td><c:out value="${row.author}"/></td>
                                <td><c:out value="${row.publisher}"/></td>
                                <td><c:out value="${row.year}"/></td>
                                <td><a href="BorrowingBook.jsp?bookID=<c:out value="${row.bookID}"/>"><span class="glyphicon glyphicon-edit">Borrow</span></a></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <a href="StudentPage.jsp" class="button btn" role="button">HomePage</a>
                </div>
                <div id="footer" >
                    <b>&COPY;minilibrary</b>
                </div>
            </div>     
        </div>
    </body>
</html>

