<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String pno  = request.getParameter("pno");
int age     = Integer.parseInt(request.getParameter("age"));
String city = request.getParameter("city");
String date = request.getParameter("date");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/passportdb","root","4515@Gopinath");

PreparedStatement ps = con.prepareStatement(
"insert into passport(fullname,passport_no,age,city,issue_date) values(?,?,?,?,?)");

ps.setString(1,name);
ps.setString(2,pno);
ps.setInt(3,age);
ps.setString(4,city);
ps.setString(5,date);

ps.executeUpdate();
response.sendRedirect("show.jsp");
%>
