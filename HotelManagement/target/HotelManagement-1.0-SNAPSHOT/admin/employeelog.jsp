<%-- 
    Document   : employeelog
    Created on : Jul 11, 2021, 2:48:29 PM
    Author     : vicky
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String name=request.getParameter("name");
    String userid =request.getParameter("userid");
    String address=request.getParameter("address");
    String jdate=request.getParameter("jdate");
    String salary=request.getParameter("salary");
    String password=request.getParameter("password");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement","root","");
    String sql="insert into reception values('"+name+"','"+userid+"','"+address+"','"+jdate+"','"+salary+"','"+password+"')";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.executeUpdate();
    con.close();
    out.print("<script>alert('Insert Operation Successfully');window.location.href='adminnn.jsp';</script>");
    %>