<%-- 
    Document   : customerlog
    Created on : Jul 11, 2021, 1:19:08 PM
    Author     : vicky
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String name=request.getParameter("name");
    String fname =request.getParameter("fname");
    String address=request.getParameter("address");
    String date=request.getParameter("date");
    String day=request.getParameter("day");
    String roomno=request.getParameter("roomno");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement","root","");
    String sql="insert into customer values('"+name+"','"+fname+"','"+address+"','"+date+"','"+day+"','"+roomno+"')";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.executeUpdate();
    con.close();
    out.print("<script>alert('Insert Operation Successfully');window.location.href='reception.jsp';</script>");
    %>