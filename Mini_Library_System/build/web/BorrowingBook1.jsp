<%-- 
    Document   : BorrowingBook1
    Created on : May 17, 2019, 1:15:10 PM
    Author     : user
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%--<jsp:useBean id="tempahan" class="tempahan.SPTF.Tempahan" scope="request" />
<jsp:setProperty name="tempahan" property="*"/>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrow Process</title>
    </head>
    <body>
        <sql:setDataSource
            var="booksList"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/mini_library_system"
            user="root" password="admin"/>
        <sql:update dataSource="${booksList}" var="result">
            insert into borrowerbook values (?,?,?,?,?);
            <sql:param value="${param.matricNo}"/>
            <sql:param value="${param.bookID}"/>
            <sql:param value="${param.bookTitle}"/>
            <sql:param value="${param.date}"/>
            <sql:param value="${param.status}"/>
        </sql:update>
        <c:redirect url="ListApprove.jsp"/>
    </body>
</html>