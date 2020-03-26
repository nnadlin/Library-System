<%-- 
    Document   : loginAdminPage
    Created on : May 25, 2019, 12:47:59 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin Page-Login</title>
    </head>
    <body>
        <form action="loginAdminProcess.jsp" method="post">
            <div id="mainlayout" align="center" >
                <div id="container"  >
                    <div id="header"><h1>MINI LIBRARY SYSTEM</h1></div>
                    <div id="content">
                        <br/><br/><br/>
                        <h2>Sign In</h2>
                        <table>
                            <tr>
                                <td><b><label>Admin ID:</label></b></td>
                                <td style="padding:10px;"><input type="text" name="adminId" size="30"/></td>
                            </tr>
                            <tr>
                            <br><td><b><label>Admin Password  :</label></b></td>
                            <td style="padding:10px;"><input type="password" name="adminPassword" size="30"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="padding: 13px;"><button type="submit" class="button btn">Sign In</button>
                            </tr>
                        </table>
                    </div>
                    <div id="footer" >
                        <b>&COPY;minilibrary</b>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>