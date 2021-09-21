<%-- 
    Document   : view customer
    Created on : Jul 11, 2021, 1:30:34 PM
    Author     : vicky
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html>
    <head>
        <title>Customer</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </head>
    <header>
        <div class="container-fluid text-primary text-center">
            <br><h1>Welcome to S$S </h1><br><br>
        </div>
    </header>
<div class="conatiner bg-secondary">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">S$S</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.html">Home</a></li>
      <li><a href="customer.jsp">Add Customer</a></li>
      <li><a href="viewcustomer.jsp">View Customer</a></li>
      <li><a href="rlogout.jsp">Logout</a></li>
    </ul>
  </div>
</nav>
</div>
  
  <body>
      
<div class="bg-light">
  
 

      <div class="container">
  <h2>Customer</h2>
                                                                              
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Father Name</th>
        <th>Address</th>
        <th>Date</th>
        <th>Day</th>
      </tr>
    </thead>
    <%
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement","root","");
                         PreparedStatement ps=con.prepareStatement("select * from customer");
                         ResultSet rs=ps.executeQuery();
                         while(rs.next())
                         {
                    %>
    <tbody>
      <tr>
        <td>1</td>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getString("fname")%></td>
        <td><%=rs.getString("address")%></td>
        <td><%=rs.getString("date")%></td>
        <td><%=rs.getString("day")%></td>
      </tr>
    </tbody>
    <% }%>
  </table>
  </div>
   </div>
</div>  
  </body>
   <br>
    <div class="container-fluid">
         <div class="row">
             <div class="col-sm-4" style="background-color:lavender;"><b>Soumya Shukla</b><br> 
                 <img src="image/Soumya.jpg" class="rounded-circle" alt="Cinque Terre" width="100" height="100">
                 <p>Soumya Shukla<br> MCA from Madan Mohan Malaviya University Of Technology GKP </p>
             </div>
             <div class="col-sm-8" style="background-color:lavenderblush;"><b>About Us</b><br>
                     <p>This site is Hotel Management .<br> This help us to keep record of customer and employees.</p>
                 </div>
         </div>
    </div>
    <footer class="bg bg-light">
        <center>
        <br><br>
        &copy; Copyright to reserved S$S <br><br>
        </center>
    </footer>
     
</html>