<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String shop_name=request.getParameter("shop_name"); 
session.putValue("shop_name",shop_name); 
String password=request.getParameter("password"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/rental","root","root");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from serviceprovider where shop_name='"+shop_name+"' and password='"+password+"'"); 
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("shop_name").equals(shop_name)) 
{ 
String site = new String("http://localhost:8084/ServiceProvider/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location",site);
out.println("Welcome " +shop_name); 
} 
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>