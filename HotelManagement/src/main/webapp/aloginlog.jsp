<%-- 
    Document   : adminloginlog
    Created on : Jul 11, 2021, 12:30:03 PM
    Author     : vicky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

String adminid=request.getParameter("adminid");
String adminpwd=request.getParameter("adminpwd");
out.print("adminid");
out.print("adminpwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement","root","");
String sql="select adminpwd from admin where adminid='"+adminid+"'";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
if(rs.next()){
//get value of password nd match with enterd password
    String respassword=rs.getString("adminpwd");
    if(adminpwd.equals(respassword)){
     //out.print("<script>alert('Valid user');window.location.href='admin.jsp'</script>");
     session.setAttribute("adminid", adminid);
     response.sendRedirect("admin/adminnn.jsp");
        }
        else{
         out.print("<script>alert('Invalid user');window.location.href='index.html'</script>");
        }
        }
else{
    out.print("<script>alert('User doesnot exit');window.location.href='index.html'</script>");
    }
con.close();


%>