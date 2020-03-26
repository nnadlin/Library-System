<%-- 
    Document   : StudentRegistrationPage
    Created on : May 8, 2019, 2:47:00 PM
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
        <title>Registration Page</title>
    </head>
    <body>
        <form action="StudentRegistrationProcess.jsp" method="post">
            <div id="mainlayout" align="center">
                <div id="container" style="width: 800px">
                    <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                    <div id="content">
                        <br>
                        <h2><center>New Registration</center></h2>
                        <table>
                            <tr>
                                <td><label>Matric No :</label></td>
                                <td><input type="text" name="txtmatric" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label>Name :</label></td>
                                <td><input type="text" name="txtname" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label>Password:</label></td>
                                <td><input type="password" name="txtpassword" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label>Re-enter Password:</label></td>
                                <td><input type="password" name="txtrepass" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label>Phone No:</label></td>
                                <td><input type="text" name="txtphoneno" size="50" /></td>
                            </tr>
                            <tr>
                                <td><label>Gender:</label></td>
                                <td><select  name="txtgender" class="dropdown-el">
                                        <option selected="" disabled="">Gender</option>
                                        <option value="Female">Female</option>
                                        <option value="Male">Male</option>
                                    </select></td>
                            </tr>
                             <tr>
                                <td></td>
                                <td style="padding: 13px;"><button type="submit" class="button btn">Complete</button>
                            </tr>
                        </table>
                        </form>
                    </div>
                    <div id="footer" >
                        <b>&COPY;minilibrary</b>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
