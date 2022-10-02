<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<body>
<form method="post" action="process.jsp">
Family Name:<br>
<input type="text" name="family_name">
<br>
Guest Count:<br>
<input type="text" name="guest_count">
<br>
<br><br>
<input type="submit" value="RSVP">
</form>
</body>
</html>

<%
/* String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:sqlserver://demosqlpocserver.database.windows.net:1433;databaseName=demosql;user=adminuser;password=Testuser@123;integratedSecurity=true;";
String dbName = "demosql";
String userId = "adminuser";
String password = "TestUser@123"; */

try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Families attending the party</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#FFA500">
<td><b>Family Name</b></td>
<td><b>Head Count</b></td>
</tr>
<%
try{ 
//connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
connection=DriverManager.getConnection("jdbc:sqlserver://demosqlpocserver.database.windows.net:1433;database=demosql;user=adminuser@demosqlpocserver;password=Testuser@123;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
statement=connection.createStatement();
String sql ="select * from dbo.RSVP";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("FamilyName") %></td>
<td><%=resultSet.getString("HeadCount") %></td>

</tr>

<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>