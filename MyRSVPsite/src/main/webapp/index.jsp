<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<body background="birthday.jpg" repeat=norepeat height=100% widght=100%>

	<br>
	<br>
	<br>
	<br>
	<form method="post" action="process.jsp">
		<b> Family Name: </b> <br> <input type="text" name="family_name">

		<br> <b> Guest Count: </b><br> <input type="text"
			name="guest_count"> <br> <br> <br> <input
			type="submit" value="RSVP"> <br> <br> <br> <br>
	</form>
	</div>
</body>
</html>


<h2 align="center">
	<font><strong>Families RSVPed the party</strong></font>
</h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
	<tr>

	</tr>
	<tr bgcolor="#FFA500">
		<td><b>Family Name</b></td>
		<td><b>Head Count</b></td>
	</tr>

	<tr bgcolor="#DEB887">

		<td>Family1</td>
		<td>3</td>

	</tr>


</table>