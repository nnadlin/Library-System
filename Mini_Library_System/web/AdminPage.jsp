<%-- 
    Document   : AdminPage
    Created on : May 25, 2019, 12:51:37 PM
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
        <title>Admin Page</title>
    </head>
    <body>
        <div id="mainlayout" align="center" >
            <div id="container"  >
                <div id="header"><h1>MINI LIBRARY SYSTEM</h1></div>
                <div id="content">
                    <br>
                    <table>
                        <tr>
                            <td><img style="height:250px;width:250px;" src="book.png"></td>
                            <td><a href="BookRegistrationPage.jsp" class="loginbutton" role="button">Register Book</a></td>
                            <td><a href="ListBook.jsp" class="loginbutton" role="button">List of Book</a></td>
                            <td><a href="ListBorrower.jsp" class="loginbutton" role="button">List of Borrower</a></td>
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
