
<%-- 
    Document   : UpdateBook
    Created on : May 17, 2019, 12:53:23 PM
    Author     : user
--%>

<%@page import="java.util.*, java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Update List Book Page</title>

    </head>
    <body>
        <%
            int bookid = Integer.parseInt(request.getParameter("id"));
            String booktitle = "", author = "", publisher = "", year = "";

            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mini_library_system";
            Connection myCon = DriverManager.getConnection(url, "root", "admin");
            Statement st = myCon.createStatement();
            String query1 = "select * from bookregistration where bookID=" + bookid;
            ResultSet rs = st.executeQuery(query1);
            while (rs.next()) {

                booktitle = rs.getString(2);
                author = rs.getString(3);
                publisher = rs.getString(4);
                year = rs.getString(5);

            }
            myCon.close();

        %>
        <div id="mainlayout" align="center">
            <div id="container" style="width: 800px">
                <div id="header"><h2>MINI LIBRARY SYSTEM</h2></div>
                <div id="content">
                    <h2><center>Update  Book for Book ID  : ISBN <%= bookid%></center></h2>
                    <form action="UpdateBook2.jsp" method="post">
                        <input type="hidden" name="hidid" value=" <%= bookid%>"/>
                        <table>

                            <tr>
                                <td><label>Book Title : </label></td>
                                <td style="padding:13px;"><input type="text" name="txtbooktitle1"  size="50" value="<%= booktitle%>" > </td>
                            </tr>
                            <tr>
                                <td><label>Author : </label></td>
                                <td style="padding:13px;"><input type="text" name="txtauthor1"  size="50"  value="<%= author%>" > </td>
                            </tr>
                            <tr>
                                <td><label>Publisher : </label></td>
                                <td style="padding:13px;"><input type="text" name="txtpublisher1"  size="50"  value="<%= publisher%>"> </td>
                            </tr> 
                            <tr>
                                <td><label>Year :</label></td>
                                <td style="padding:13px;"><select  name="txtyear1" class="dropdown-el">
                                        <option value="2010">2010</option>
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                    </select> </td>
                            </tr> 
                        </table>
                        <br/>
                 <button type="submit" class="button btn">Update</button>
                    </form>
                </div>
                <div id="footer" >
                    <b>&COPY;minilibrary</b>
                </div>
            </div>
        </div>
    </body>
</html>

