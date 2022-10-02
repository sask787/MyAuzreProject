<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String family_name=request.getParameter("family_name");
String guest_count=request.getParameter("guest_count");
try
{
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           Connection conn = DriverManager.getConnection("jdbc:sqlserver://demosqlpocserver.database.windows.net:1433;database=demosql;user=adminuser@demosqlpocserver;password=Testuser@123;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into dbo.RSVP(FamilyName,HeadCount)values('"+family_name+"',"+guest_count+")");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>