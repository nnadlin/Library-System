<%-- 
    Document   : StudentRegistrationProcess
    Created on : May 17, 2019, 11:37:38 AM
    Author     : user
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
            String matric = request.getParameter("txtmatric");
            String name = request.getParameter("txtname");
            String password = request.getParameter("txtpassword");
            String repass = request.getParameter("txtrepass");
            String phoneno = request.getParameter("txtphoneno");
            String gender = request.getParameter("txtgender");

            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mini_library_system";
            Connection myCon = DriverManager.getConnection(url, "root", "admin");

            String sql = "insert into studentregistration(matricNo, name, password, phoneNo,gender)"
                    + "values(?,?,?,?,?)";
            PreparedStatement ps = myCon.prepareStatement(sql);
            ps.setString(1, matric);
            ps.setString(2, name);
            if (!repass.equals(password)) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Password not same\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("StudentRegistrationPage.jsp");
                rd.include(request, response);
            } else {
                ps.setString(3, password);
            }
            ps.setString(4, phoneno);
            ps.setString(5, gender);

            if (!ps.execute()) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Registration Success\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("StudentPage.jsp");
                rd.include(request, response);
            }
            myCon.close();
        %>
    </body>
</html>
