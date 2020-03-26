<%-- 
    Document   : RegistrationProcess
    Created on : May 17, 2019, 11:26:08 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Process</title>
    </head>
    <body>
        <%
  
            String bookid = request.getParameter("txtbookid");
            String booktitle = request.getParameter("txtbooktitle");
            String author = request.getParameter("txtauthor");
            String publisher = request.getParameter("txtpublisher");
            String year = request.getParameter("txtyear");

            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mini_library_system";
            Connection myCon = DriverManager.getConnection(url, "root", "admin");

            String sql = "insert into bookregistration( bookID, bookTitle, author, publisher, year)  values(?,?,?,?,?)";
            PreparedStatement ps = myCon.prepareStatement(sql);
               
            ps.setString(1, bookid);
            ps.setString(2, booktitle);
            ps.setString(3, author);
            ps.setString(4, publisher);
            ps.setString(5, year);

            if (!ps.execute()) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Registration Success\")");
                out.println("</script>");
            
                RequestDispatcher rd = request.getRequestDispatcher("ListBook.jsp");
                rd.include(request, response);
            }
            myCon.close();
        %>
    </body>
</html>

