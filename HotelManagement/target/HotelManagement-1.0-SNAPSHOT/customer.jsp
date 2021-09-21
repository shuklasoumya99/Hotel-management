<%-- 
    Document   : customer
    Created on : Jul 11, 2021, 1:17:49 PM
    Author     : vicky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
     <header>
        <div class="container-fluid text-primary text-center bg-light">
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
      <li><a href="rlogout.jsp"> Logout</a></li>
    </ul>
  </div>
</nav>
</div>
    <body class="bg bg-info">
             <center>
                    <div id="box">
                         <form action="customerlog.jsp" method="post">
                             <h1>Customer Details</h1><br><br>
                             NAME : <input type="text" name="name" placeholder="Name" required><br><br>
                         FATHER NAME : <input type="text" name="fname" placeholder="Father Name" required><br><br>
                         ADDRESS: <input type="text" name="address" placeholder="Address" required><br><br>
                         DATE : <input type="text" name="date" placeholder="Date" required><br><br>
                         DAY: <input type="text" name="day" placeholder="Day" required><br><br>
                         ROOM NO: <input type="number" name="roomno" placeholder="Room No" required><br><br>

                         <input type="submit" value="Submit">
                     </form>
                     </div>
                 </center>
           
         
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

