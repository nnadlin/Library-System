<%-- 
    Document   : loginStudentPage
    Created on : May 8, 2019, 11:32:11 AM
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
        <title>Student Page-Login</title>
    </head>
    <body>
        <form action="loginStudentProcess.jsp" method="post">
            <div id="mainlayout" align="center" >
                <div id="container"  >
                    <div id="header"><h1>MINI LIBRARY SYSTEM</h1></div>
                    <div id="content">
                        <br/><br/><br/>
                        <h2><center>Sign in</center></h2>

                        <table>
                            <tr>
                                <td><b><label>Matric No:</label></b></td>
                                <td style="padding:10px;"><input type="text" name="txtmatric" size="30"/></td>
                            </tr>
                            <tr>
                                <td><b><label>Password  :</label></b></td>
                                <td style="padding:10px;"><input type="password" name="txtpassword" size="30"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="padding: 13px;"><button type="submit" class="button btn">Sign In</button>
                            </tr>
                        </table>
                        <p>Do you not have any account yet?<a href="StudentRegistrationPage.jsp"> Register Now!</a>
                    </div>
                    <div id="footer" >
                        <b>&COPY;minilibrary</b>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>