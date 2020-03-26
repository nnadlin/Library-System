<%-- 
    Document   : DeleteBook
    Created on : May 26, 2019, 12:00:47 PM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Book Page</title>
    </head>
    <body>
        <%
            String bookid =  request.getParameter("id" );
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mini_library_system";
            Connection myCon =DriverManager.getConnection(url, "root", "admin");
            String query = "delete from bookregistration where bookID=?";
            PreparedStatement pst = myCon.prepareStatement(query);
            pst.setString(1, bookid);
      
            if(pst.executeUpdate()!=0){
                     System.out.println();
        %>
        <script type="text/javascript">
            alert("Success Delete the Record");
        </script>
        <%  
                RequestDispatcher rd = request.getRequestDispatcher("ListBook.jsp");
                rd.include(request, response);
            }
            myCon.close();
        %>
    </body>
</html>

