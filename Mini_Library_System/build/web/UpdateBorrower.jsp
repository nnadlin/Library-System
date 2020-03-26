<%-- 
    Document   : UpdateBorrower
    Created on : May 17, 2019, 12:53:23 PM
    Author     : user
--%>

<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
        <title>Update Product</title>
    </head>
    <body>
        <div id="mainlayout" align="center">
            <div id="container" style="width: 800px">
                <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                <div id="content">
                    <sql:setDataSource var="borrowerList" driver="com.mysql.jdbc.Driver"
                                       url="jdbc:mysql://localhost:3306/mini_library_system"
                                       user="root"  password="admin"/>

                    <sql:query dataSource="${borrowerList}" var="result">
                        SELECT * from borrowerbook where matricNo=?;
                        <sql:param value="${param.matricNo}" />
                    </sql:query>

                    <form action="UpdateBorrower1.jsp" method="post">
                        <h2 style="text-align: center;">Update Status Borrower - ${row.matricNo}</h2>
                        <table class="table table-striped">  
                            <c:forEach var="row" items="${result.rows}">                     
                                <tr>
                                    <th>Matric No</th>
                                    <td><input type="text" value="${param.matricNo}" name="txtmatricno" size="50"/></td>
                                </tr>
                                <tr>
                                    <th>Book Id</th>
                                    <td><input type="text" value="${row.bookId}" name="txtbookid" size="50"/></td>
                                </tr>
                                <tr>
                                    <th>Book Title</th>
                                    <td><input type="text" value="${row.bookTitle}" name="productLine" size="50"/></td>
                                </tr>
                                <tr>
                                    <th>Date</th>
                                    <td><input type="text" value="${row.date}" name="txtdate" /></td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td><input type="text" value="${row.status}" name="txtstatus" /></td>
                                </tr>                                   
                            </c:forEach>
                        </table>
                        <br/>
                        <button type="submit" class="button btn">Update</button>
                        <a href="ListBorrower.jsp" class="button btn">Reset</a>
                    </form>
                </div>
                <div id="footer" >
                    <b>&COPY;minilibrary</b>
                </div>
            </div>
        </div>
    </body>
</html>