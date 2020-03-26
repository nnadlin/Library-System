<%-- 
    Document   : ListBook
    Created on : May 17, 2019, 12:39:51 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> <%--bootstrap for table --%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> <%--bootstrap for icon --%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>List Book</title>
    </head> 
    <body>
        <div id="mainlayout" align="center">
            <div id="container" style="width: 800px">
                <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                <div id="content">
                    <%
                        String matric = request.getParameter("matricno");
                        Class.forName("com.mysql.jdbc.Driver");
                        String urls = "jdbc:mysql://localhost:3306/mini_library_system";
                        Connection conn = DriverManager.getConnection(urls, "root", "admin");
                        Statement st = conn.createStatement();
                        String sql = "select * from bookregistration ";
                        ResultSet rs2 = st.executeQuery(sql);
                    %>
                    <table class="table table-striped">
                        <tr>
                            <th>Book ID</th>
                            <th>Book Title</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Year</th>
                            <th>Actions</th>
                        </tr>
                        <%
                            while (rs2.next()) {
                                out.println("<tr>");
                                out.println("<td>" + rs2.getString(1) + "</td>");
                                out.println("<td>" + rs2.getString(2) + "</td>");
                                out.println("<td>" + rs2.getString(3) + "</td>");
                                out.println("<td>" + rs2.getString(4) + "</td>");
                                out.println("<td>" + rs2.getString(5) + "</td>");
                                out.println("<td><a href='UpdateBook.jsp?id=" + rs2.getString(1) + "'><span class='glyphicon glyphicon-edit'></span></a>");
                                out.println("| <a href='DeleteBook.jsp?id=" + rs2.getString(1) + "' onclick=\"return confirm('Are you sure want to delete?')\"><span class='glyphicon glyphicon-trash'></span></a>");
                                out.println("</td>");
                                out.println("</tr>");
                            }
                        %>
                    </table>
                    <%
                        conn.close();
                    %>
                    <a href="AdminPage.jsp" class="button btn" role="button">HomePage</a>
                </div>

                <div id="footer" >
                    <b>&COPY;minilibrary</b>
                </div>
            </div>     
        </div>
    </body>
</html>
