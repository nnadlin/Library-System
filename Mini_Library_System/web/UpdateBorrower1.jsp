<%-- 
    Document   : UpdateBorrower1
    Created on : Mar 24, 2020, 11:52:27 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Update1 Process</title>
    </head>
    <body>
        <sql:setDataSource var="borrowerList" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/mini_library_system"
                           user="root"  password="admin"/>


        <sql:update dataSource="${borrowerList}" var="result1">
            UPDATE borrowerbook SET bookId=?,bookTitle=?,date=?,status=? where matricNo='${param.matricNo}'

            <sql:param value="${param.bookId}" />
            <sql:param value="${param.bookTitle}" />
            <sql:param value="${param.date}" />
            <sql:param value="${param.status}" />

        </sql:update>
        <c:if test="${result1>=1}">
            <sql:setDataSource var="borrowerList" driver="com.mysql.jdbc.Driver"
                               url="jdbc:mysql://localhost:3306/mini_library_system"
                               user="amdmin"  password="root"/>

            <sql:query dataSource="${borrowerList}" var="result">
                select * from borrowerbook where matricNo=?;
                <sql:param value="${param.matricNo}"/>
            </sql:query>
            <div id="mainlayout" align="center">
                <div id="container" style="width: 800px">
                    <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                    <div id="content">
                        <h2 style="text-align: center;">Update Status Borrower - ${row.matricNo}</h2>
                        <c:forEach var="row" items="${result.rows}">
                            <table class="table table-striped">
                                <tbody>
                                    <tr>
                                        <th scope="row">Matric No</th>
                                        <td>${row.matricNo}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Book Id</th>
                                        <td>${row.bookId}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Book Title</th>
                                        <td>${row.bookTitle}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Date</th>
                                        <td>${row.date}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Status</th>
                                        <td>${row.status}</td>
                                    </tr>                                        
                                </tbody>
                            </table>
                        </c:forEach>
                    </c:if>
                    <br/>
                    <font size="4" color='green'>Data updated successfully.</font>
                    <a href="ListBorrower.jsp" class="button btn">Home Page</a>
                </div>
            </div>
        </div>
    </body>
</html>
