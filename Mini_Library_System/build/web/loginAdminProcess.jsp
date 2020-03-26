<%-- 
    Document   : loginAdminProcess
    Created on : May 25, 2019, 1:07:42 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("adminId");
            String pass = request.getParameter("adminPassword");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                String myUrl = "jdbc:mysql://localhost:3306/mini_library_system";
                Connection con = DriverManager.getConnection(myUrl, "root", "admin");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from adminregistration");
                int x = 0;
                while (rs.next()) {
                    if ((rs.getString("adminId").equals(id)) && rs.getString("adminPassword").equals(pass)) {
                        String stp = rs.getString("admintype");
                        if (stp.equals("admin")) {
                            x = 1;
                            break;
                        } else {

                            x = 2;
                            break;
                        }
                    }
                }
                if (x == 2) {
                    response.sendRedirect("loginAdminPage.jsp");
                } else if (x == 1) {
                    response.sendRedirect("AdminPage.jsp");
                } else {
                    out.println("Invalid staff please try again");
        %>
        <jsp:include page="loginAdminPage.jsp" />
        <%}

            } catch (Exception e) {

                out.println(e);

            }

            session.setAttribute("adminId", id);

        %> 
    </body>
</html>
