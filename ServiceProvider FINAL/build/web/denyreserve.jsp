<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
 <%
    if(session.getAttribute( "shop_name" ) == null || session.getAttribute( "shop_name" )== ""){
        session.setAttribute("message", "Please Login");
%>       
<script>
function myFunction() {
    alert("Please Login!");
}
</script>
<%
         response.sendRedirect(response.encodeRedirectURL("http://www.mademoiselle.com:8084/ServiceProvider/index.jsp"));
    }

%>
<%

String id = request.getParameter("id");
String req_firstname=request.getParameter("req_firstname");
String req_collectionname=request.getParameter("req_collectionname");
String req_quantity=request.getParameter("req_quantity");
String req_price=request.getParameter("req_price");
String req_datereserved=request.getParameter("req_datereserved");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.5.87:3306/rental", "root1", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM request_reservation WHERE req_id="+id);
if( i >= 0 ){
    
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         
         pstmt = conn.prepareStatement("insert into rejected (reservation_collectionname, reservation_quantity, req_price, shop_name, req_datereserved, first_name) values (?, ?, ?, ?, ?, ?)");
         pstmt.setString(1, req_collectionname);
         pstmt.setString(2, req_quantity);
         pstmt.setString(3, req_price);
         pstmt.setObject(4, session.getAttribute( "shop_name" ));
         pstmt.setString(5, req_datereserved);
         pstmt.setString(6, req_firstname);
         pstmt.executeUpdate();
         
         String site = new String("http://www.mademoiselle.com:8084/ServiceProvider/reservation.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location",site);
        
        
           


}
}
catch(SQLException sql) {
                request.setAttribute("error", sql);
                    out.println(sql);
}



%>




