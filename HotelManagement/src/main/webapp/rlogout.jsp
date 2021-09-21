<%-- 
    Document   : rlogout
    Created on : Jul 12, 2021, 9:10:14 AM
    Author     : vicky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.invalidate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reception Logout</title>
        <script>
            function logout(){
                window.history.forward();
                window.setTimeout("window.location.href='index.html';",1000);
            }
        </script>
    </head>
    <body bgcolor="black" onload="logout()">
        
    </body>
</html>