<%-- 
    Document   : StudentPage
    Created on : May 8, 2019, 3:42:35 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student Page</title>
    </head>
    <body>
        <div id="mainlayout" align="center" >
            <div id="container"  >
                <div id="header"><h1>MINI LIBRARY SYSTEM</h1></div>
                <div id="content">
                    <br>
                    <table>
                        <tr>
                            <td><img style="height:250px;width:250px;" src="book1.png"></td>
                            <td><a href="ListApprove.jsp" class="loginbutton" role="button">Borrow Status</a></td>
                            <td><a href="ListBookStudent.jsp" class="loginbutton" role="button">List of Book</a></td>
                            <td><a href="index.html" class="loginbutton" role="button">Sign Out</a></td>
                        </tr>
                    </table>
                </div>
                <div id="footer" >
                    <b>&COPY;minilibrary</b>
                </div>
            </div>
        </div>
    </body>
</html>
