<%-- 
    Document   : delete.jsp
    Created on : Jul 11, 2021, 3:09:52 PM
    Author     : vicky
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String userid=request.getParameter("userid");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement","root","");
String query="delete * from reception where userid='"+userid+"'";
PreparedStatement ps=con.prepareStatement(query);

if(ps.executeUpdate()>0){
    out.print("<script>alert('Record Deleted');window.locaton.href='adminnn.jsp'</script>");
    }
    else{
    out.print("<script>alert('Not Deleted Record');window.locaton.href='adminnn.jsp'</script>");
    }
    con.close();
    }
    catch(Exception e){
    out.print(e);
    e.printStackTrace();
    }
        
%>