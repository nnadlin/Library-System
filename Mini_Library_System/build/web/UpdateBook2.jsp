<%-- 
    Document   : UpdateBook2
    Created on : May 17, 2019, 1:15:10 PM
    Author     : user
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Book2</title>
    </head>
    <body>
        <%
             
           String bookid = request.getParameter("hidid");
            String booktitle = request.getParameter("txtbooktitle1");
            String author = request.getParameter("txtauthor1");
            String publisher = request.getParameter("txtpublisher1");
            String year = request.getParameter("txtyear1");

            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mini_library_system";
            Connection myCon = DriverManager.getConnection(url, "root", "admin");
            String query = "update bookregistration set  bookTitle=?, author=?, publisher=?,year=? where bookID =?";
            PreparedStatement pst = myCon.prepareStatement(query);
             
            pst.setString(5, bookid);
            pst.setString(1, booktitle);
            pst.setString(2, author);
            pst.setString(3,publisher);
            pst.setString(4, year);
            System.out.println(pst.toString());
            if (pst.executeUpdate() != 0) {
        %>
        <script type="text/javascript">
            alert("Success Update the Book");
        </script>
        <%
                RequestDispatcher rd = request.getRequestDispatcher("ListBook.jsp");
                rd.include(request, response);
            }

            myCon.close();
        %>
    </body>
</html>
