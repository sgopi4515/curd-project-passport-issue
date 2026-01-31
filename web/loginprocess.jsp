<%@ page import="java.sql.*" %>
<%
String u = request.getParameter("uname");
String p = request.getParameter("pwd");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/passportdb","root","4515@Gopinath");

PreparedStatement ps =
con.prepareStatement("select * from adminlogin where username=? and password=?");
ps.setString(1,u);
ps.setString(2,p);

ResultSet rs = ps.executeQuery();

if(rs.next())
    response.sendRedirect("home.jsp");
else
    out.println("Invalid Login");
%>
