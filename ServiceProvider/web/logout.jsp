<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String shop_name=(String)session.getAttribute("shop_name");
if(shop_name!=null)
{
session.removeAttribute("shop_name");
String site = new String("http://localhost:8084/ServiceProvider/index.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location",site);
}
else 
{
String site = new String("http://localhost:8084/ServiceProvider/index.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location",site);
}
%>