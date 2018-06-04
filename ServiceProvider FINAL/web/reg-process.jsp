<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String shop_owner=request.getParameter("shop_owner");
String shop_name=request.getParameter("shop_name");
String password=request.getParameter("password");
String address=request.getParameter("address");
String shop_contact=request.getParameter("shop_contact");
String shop_info=request.getParameter("shop_info");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.5.87:3306/rental", "root1", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into serviceprovider(shop_owner,shop_name,password,address,shop_contact,shop_info,status)value('"+shop_owner+"','"+shop_name+"','"+password+"','"+address+"','"+shop_contact+"','"+shop_info+"','pending')");
if (i > 0){
String site = new String("http://www.mademoiselle.com:8084/ServiceProvider/awaitingapproval.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location",site);
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>