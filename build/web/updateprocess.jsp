<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/passportdb","root","4515@Gopinath");

PreparedStatement ps =
con.prepareStatement("UPDATE passport SET city=? WHERE passport_no=?");

ps.setString(1,request.getParameter("city"));
ps.setString(2,request.getParameter("pno"));

ps.executeUpdate();
response.sendRedirect("show.jsp");
%>
