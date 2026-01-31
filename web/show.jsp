<%@page import="java.sql.*"%>
<h2>View Passport Records</h2>

<table border="1">
<tr>
<th>ID</th><th>Name</th><th>Passport</th><th>Age</th><th>City</th><th>Date</th>
</tr>

<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/passportdb","root","4515@Gopinath");

Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM passport");

while(rs.next()){
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getDate(6)%></td>
</tr>
<% } %>
</table>