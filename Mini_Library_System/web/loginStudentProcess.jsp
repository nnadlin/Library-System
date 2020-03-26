<%-- 
    Document   : loginStudentProcess
    Created on : May 8, 2019, 3:36:05 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Student Process</title>
    </head>
    <body>
        <%
            String matric = request.getParameter("txtmatric");
            String password = request.getParameter("txtpassword");

            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mini_library_system";
            Connection myCon = DriverManager.getConnection(url, "root", "admin");

            String query = "select matricNo, password from studentregistration where matricNo=? and password=?";
            PreparedStatement pst = myCon.prepareStatement(query);
            pst.setString(1, matric);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                request.setAttribute("matricNo", matric);
                RequestDispatcher rd = request.getRequestDispatcher("StudentPage.jsp");
                rd.forward(request, response);
            } else {
        %>
        <script>
            alert("Your Password or email are wrong please try again!!");
        </script>
        <%
                RequestDispatcher rd = request.getRequestDispatcher("loginStudentPage.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>

