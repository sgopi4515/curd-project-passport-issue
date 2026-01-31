<%@ page import="java.sql.*" %>
<html>
<body>
<h2>Search Result</h2>

<table border="1">
<tr>
<th>ID</th><th>Name</th><th>Passport</th>
<th>Age</th><th>City</th><th>Date</th>
</tr>

<%
String pno = request.getParameter("pno");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/passportdb","root","4515@Gopinath");

PreparedStatement ps =
con.prepareStatement("select * from passport where passport_no=?");
ps.setString(1,pno);

ResultSet rs = ps.executeQuery();
while(rs.next()){
%>
<tr>
<td><%=rs.getInt("pid")%></td>
<td><%=rs.getString("fullname")%></td>
<td><%=rs.getString("passport_no")%></td>
<td><%=rs.getInt("age")%></td>
<td><%=rs.getString("city")%></td>
<td><%=rs.getDate("issue_date")%></td>
</tr>
<% } %>

</table>
</body>
</html>
