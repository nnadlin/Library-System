<%-- 
    Document   : ListBorrower
    Created on : May 17, 2019, 1:39:52 PM
    Author     : user
--%>

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
        <title>List Borrower</title>
    </head>
    <body>
        <div id="mainlayout" align="center">
            <div id="container" style="width: 800px">
                <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                <div id="content">
                    <h2 style="text-align: center;">List Borrower</h2>
                    <sql:setDataSource var="borrowerList" driver="com.mysql.jdbc.Driver"
                                       url="jdbc:mysql://localhost:3306/mini_library_system"
                                       user="amdmin"  password="root"/>
                    <sql:query dataSource="${borrowerList}" var="result">
                        SELECT * from borrowerbook;
                    </sql:query>

                    <table class="table table-striped">
                        <tr>
                            <th>Matric No</th>
                            <th>Book Id</th>
                            <th>Book Title</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach var="row" items="${result.rows}">
                            <tr>
                                <td><c:out value="${row.matricNo}"/></td>
                                <td><c:out value="${row.bookId}"/></td>
                                <td><c:out value="${row.bookTitle}"/></td>
                                <td><c:out value="${row.date}"/></td>
                                <td><c:out value="${row.status}"/></td>
                                <td><a href="UpdateBorrower.jsp?matricNo=<c:out value="${row.matricNo}"/>"><span class="glyphicon glyphicon-edit"></span></a></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div style="margin:10px;">
                        <a href="AdminPage.jsp" class="button btn">Home Page</a>
                    </div>
                </div>
                <div id="footer" >
                    <b>&COPY;minilibrary</b>
                </div>
            </div>
        </div>
    </body>
</html>