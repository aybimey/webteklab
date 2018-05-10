<%-- 
    Document   : insert2
    Created on : 05 10, 18, 3:59:24 PM
    Author     : HannaDeza
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru Database JSP1</title>
</head>
<body>
 
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/practicumproj"
     user="root"  password=""/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from participant;
</sql:query>
 
<table>
<tr>
    <th>name</th>
   <th>email</th>
    <th>number</th>
 
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.email}"/></td>
   <td><c:out value="${row.number}"/></td>
 
</tr>
</c:forEach>
</table>
 
</body>
</html>