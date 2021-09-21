<%-- 
    Document   : Update.jsp
    Created on : Jul 11, 2021, 3:10:05 PM
    Author     : vicky
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!<!doctype html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <style>
             #box {
                 background-color: lightgrey;
                 width: 500px;
                 border: 15px solid brown;
                 padding: 50px;
                 margin: 100px;
                }
        </style>
    </head>
    
    <div class="conatiner bg-secondary">
        <nav class="navbar navbar-inverse navbar-fixed-top">
              <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">S$S</a>
                </div>
                <ul class="nav navbar-nav">
                  <li class="active"><a href="index.html">Home</a></li>
                  <li><a href="customer.jsp">Add Customer</a></li>
                  <li><a href="viewcustomer.jsp">view Customer</a></li>
                  <li><a href="alogout.jsp">Logout</a></li>
                </ul>
              </div>
            </nav>
        </div>
    <body>
        <%
            
                         String userid=request.getParameter("userid");
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement","root","");
                         String query="select * from customer where userid='"+userid+"'";
                         PreparedStatement ps=con.prepareStatement(query);
                         ResultSet rs=ps.executeQuery();
                         while(rs.next())
                         {
                    %>
    <center>
        <div id="box">
            <form action="updatelog.jsp" method="post">
                <h1>Add Employees</h1><br><br>
                Name : <input type="text" name="name" value="<%=rs.getString("name")%>"><br><br>
            Email : <input type="email" name="userid" value="<%=rs.getString("userid")%>"><br><br>
            Address: <input type="text" name="address" value="<%=rs.getString("address")%>"><br><br>
            Date of Joining : <input type="text" name="jdate" value="<%=rs.getString("jdate")%>"><br><br>
            Salary: <input type="number" name="salary" value="<%=rs.getString("salary")%>"><br><br>
            Password: <input type="text" name="password" value="<%=rs.getString("password")%>"><br><br>
            <input type="submit" value="Submit">
        </form>
        </div>
    </center>
       
    </body>
</html>
