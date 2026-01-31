<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/passportdb","root","4515@Gopinath");

PreparedStatement ps =
con.prepareStatement("DELETE FROM passport WHERE passport_no=?");

ps.setString(1,request.getParameter("pno"));
ps.executeUpdate();

response.sendRedirect("show.jsp");
%>
