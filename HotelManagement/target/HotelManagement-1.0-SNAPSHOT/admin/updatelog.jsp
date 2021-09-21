<%-- 
    Document   : updatelog
    Created on : Jul 12, 2021, 9:08:52 AM
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
    String sql="update into reception values('"+name+"','"+userid+"','"+address+"','"+jdate+"','"+salary+"','"+password+"')";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.executeUpdate();
    con.close();
    out.print("<script>alert('Insert Operation Successfully');window.location.href='adminnn.jsp';</script>");
    %>