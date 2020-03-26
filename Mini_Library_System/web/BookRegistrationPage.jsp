<%-- 
    Document   : BookRegistrationPage
    Created on : May 8, 2019, 3:05:34 PM
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
        <title>Book Registration</title>
    </head>
    <body>
        <div id="mainlayout" align="center">
            <div id="container" style="width: 800px">
                <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                <div id="content">
                    <br>
                    <h2><center>Add Book</center></h2>
                    <form action="BookRegistrationProcess.jsp" method="post">
                        <table>                            
                            <tr>
                                <td><label>Book ID :</label></td>
                                <td><input type="text" name="txtbookid" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label>Book Title :</label></td>
                                <td><input type="text" name="txtbooktitle" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label>Author:</label></td>
                                <td><input type="text" name="txtauthor" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label>Publisher :</label></td>
                                <td><input type="text" name="txtpublisher" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label>Year:</label></td>
                                <td><select  name="txtyear" class="dropdown-el">
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                    </select></td>
                            </tr>
                        </table>
                        <div style="margin:10px;">
                            <button type="submit" class="button btn">Add</button>
                            <button type="reset" class="button btn">Reset</button>
                            <a href="AdminPage.jsp" class="button btn" role="button">HomePage</a>
                        </div>                       
                    </form>
                </div>
                <div id="footer" >
                    <b>&COPY;minilibrary</b>
                </div>
            </div>
        </div>
    </body>
</html>
