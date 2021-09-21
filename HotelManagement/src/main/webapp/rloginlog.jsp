<%-- 
    Document   : rloginlog
    Created on : Jul 11, 2021, 10:47:21 AM
    Author     : vicky
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userid =request.getParameter("userid");   
    String password=request.getParameter("password");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagement","root","");
    String query="select password from reception where userid='"+userid+"'";
    PreparedStatement p=cn.prepareStatement(query);
    ResultSet r=p.executeQuery();
    //try{
        if(r.next()){
        String respassword=r.getString("password");
            if(password.equals(respassword))
            {
                session.setAttribute("userid", userid);
                response.sendRedirect("reception.jsp");
            }
            else{
            out.print("<script>alert('Wrong Password');window.location.href='index.html'</script>");
            }
        }
        else{
        out.print("<script>alert('Invalid user');window.location.href='index.html'</script>");
        }
        cn.close();
    //}
   // catch(Exception e){
    //e.printStackTrace();
    //}
    
%>
    
