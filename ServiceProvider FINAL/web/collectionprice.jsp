<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
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
    

<head>
<!-- meta -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport" http-equiv="Content-Type">

  <title>Mademoiselle</title>
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

  <!-- Libraries CSS Files -->
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/hover/hover.min.css" rel="stylesheet">

  <!-- Blog Stylesheet File -->
  <link href="css/blog.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- Responsive css -->
  <link href="css/responsive.css" rel="stylesheet">

  <!-- Favicon -->
  <link rel="shortcut icon" href="images/Logo.png">
  
  <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<style>
    .madam{color:black;
    font-family:'Great vibes', cursive;
    margin-top:2.5%;
    color:#b8a07e;}
    
    .madam:hover{
        color:black;
    }
    
    ul li a:hover{
        color:#b8a07e;  
    }
    
    .bcontainer{
        position:fixed;
        z-index: 999;
        opacity:0.7;
    }
    
    .bcontainer:hover{
        opacity:1;
    }
    
    .imgcontainer {
    position: relative;
    width: 100%;
}

.image {
  display: block;
  width: 100%;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top:10%;
  left: 85%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.imgcontainer:hover .image {
  opacity: 0.6;
  cursor:pointer;
}

.imgcontainer:hover .middle {
  opacity: 1;
  cursor:pointer;
}


    
</style>
</head>
<body>

  <!-- start section navbar -->
  <nav id="main-nav-subpage" class="subpage-nav">
    <div class="row">
      <div class="container">

        <div class="logo" style=" width:30%;">
			<div class="logo-left" style="float:left; width:30%;">
				<img src="images/gown.png">
			</div>
			<div class="logo-right" style="float:right; width:70%;">
				<a href="home.jsp"><h1 class ="madam">Mademoiselle</h1></a>
			</div>
        </div>

        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>
		
        <ul class="nav-menu list-unstyled" style="margin-top:0%;">
          <li><a href="home.jsp" class="smoothScroll" ><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
          <li><a href="collections.jsp" class="smoothScroll" style="color:#b8a07e;"><i class="fa fa-female" aria-hidden="true"></i> Collections</a></li>
          <li><a href="planner.jsp" class="smoothScroll"><i class="fa fa-shopping-basket" aria-hidden="true"></i> Planner</a></li>
          <li><a href="reservation.jsp" class="smoothScroll"><i class="fa fa-address-book" aria-hidden="true"></i> Reservation</a></li>
          <li><a href="#" class="smoothScroll"><a href="logout.jsp" ><i class="fa fa-caret-square-o-right" aria-hidden="true"></i> Logout</a></li>
        </ul>

      </div>
    </div>
  </nav>
  <!-- End section navbar -->

  
 <!-- Add collection button -->
 <div id="journal-blog" class="text-left  paddsections" style="margin-top:5%;">
     
    
     <div class="container">
     <div class="row">
     <div class="col-lg-6">
         <form action="collectioncat.jsp" method="post">
             <div class="row">
              <div class="col-lg-6">
             <select class="custom-select" name="category_name"><br>
                        <option>Select Category</option>
                         <%
                                try
                               {        
                                  Class.forName("com.mysql.jdbc.Driver");
                                  String url="jdbc:mysql:/192.168.5.87:3306/rental";
                                  String username="root1";
                                  String password="";
                                  String query="select * from category";
                                  Connection conn=DriverManager.getConnection(url, username, password);
                                  Statement stmt=conn.createStatement();
                                  ResultSet rs=stmt.executeQuery(query);
                                  while(rs.next())
                                  {
                         %>
                  
                        <option value =" <%=rs.getString("category_name")%> "> <%=rs.getString("category_name") %></option> 
                     <%
                        }
                     %> </select> <br><br>
                  <%
                     rs.close();
                     stmt.close();
                     conn.close();
                    }
                        catch(Exception e)
                        {
                             e.printStackTrace();
                        }
                    %>
              </div>
        <div class="col-lg-6">            
        <button class="btn btn-secondary" type="submit" name="submit"><i class="fa fa-hand-o-right" aria-hidden="true"></i> Go</button> 
        </div> 
             </div>
         </form>
             
     </div>
         </div>
     </div>
                <div class="container">
              <div class="row">
                 <div class="col-lg-6">
                     <form action="collectionprice.jsp" method="post">
                         Price:
                         <div class="row">
                     
                     <div class="col-lg-5"><input type="text" class="form-control" name="min" value="min">
                     </div>-
                     
                     <div class="col-lg-5"><input class="form-control" type="text" class="form-control" name="max" value="max"></div>
                     <div class="col"><button class="btn btn-secondary" type="submit" name="submit"><i class="fa fa-hand-o-right"></i> Go</button> 
                         </div>
                     
                         </div>
                         </form>
                     
                 </div>
              </div>
               </div>
     
    
      <div class="bcontainer" style="margin-left: 89%;">
        <!-- Button to Open the Modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="background-color:#b8a07e; border:2px solid">
              Add Collection
            </button>
       </div>
 
 
 <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
        
         <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Add Collection</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
 
        <!-- Modal body -->
        <div class="modal-body">
            <form action="addclothing" method="post" role="form" class="contactForm" enctype="multipart/form-data"> 
                <input type="file" name="file"/>
                    <select class="custom-select" name="category_id"><br>
                        <option>Select Category</option>
                         <%
                                try
                               {        
                                  Class.forName("com.mysql.jdbc.Driver");
                                  String url="jdbc:mysql://192.168.5.87:3306/rental";
                                  String username="root1";
                                  String password="";
                                  String query="select * from category";
                                  Connection conn=DriverManager.getConnection(url, username, password);
                                  Statement stmt=conn.createStatement();
                                  ResultSet rs=stmt.executeQuery(query);
                                  while(rs.next())
                                  {
                         %>
                  
                        <option value =" <%=rs.getString("category_id")%> "> <%=rs.getString("category_name") %></option> 
                     <%
                        }
                     %> </select> <br><br>
                  <%
                     rs.close();
                     stmt.close();
                     conn.close();
                    }
                        catch(Exception e)
                        {
                             e.printStackTrace();
                        }
                    %>
                    <input type="text" name="collection_name" class="form-control" placeholder="Name of your design" />
                    <input type="text" class="form-control" name="collection_price" placeholder="Rental Fee" /> 
                    <input type="number" class="form-control" name="collection_quantity" placeholder="Quantity" />
                    <textarea type="text" class="form-control" rows="12" name="collection_info" placeholder="Describe your design"></textarea>   
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-defeault btn-send" value="Add"/>
                    </div>
                    </form>
                </div>
            </div>
        
    </div>
  </div>
</div>
  <!-- end add collection button -->
  
  
  <!-- display pictures -->
  
 <div class="container">
      
      <div class="journal-block" >
           
        <div class="row">
 
            
             <% 
                 String min =request.getParameter("min");
                 String max =request.getParameter("max");
                 try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://192.168.5.87:3306/rental", "root1", "");
                    Statement st = con.createStatement();
               
                    String sql = "SELECT * from collection where shop_name='"+session.getAttribute( "shop_name" )+"' and collection_price BETWEEN '"+min+"' and '"+max+"' order by collection_id DESC" ;
                    ResultSet rs = st.executeQuery(sql);
                    while (rs.next()){
        
            %>
            
           <div class="col-lg-4 col-md-6">
              <div class="journal-info mb-30">
                 <div class="imgcontainer">
                   <image src ="images/<%=rs.getString("filename")%>" width="400" height="600" class="image"/>
                  <div class="journal-txt">
                      <strong>Name:</strong> <%=rs.getString("collection_name")%><br>
                      <strong>Description:</strong> <%=rs.getString("collection_info")%><br>
                      <strong>Rental Fee:</strong> PHP <%=rs.getString("collection_price")%>
                  </div>
                  
                  
                  <div class="middle">
                      <div class="text">
                          <a href="deleteimage.jsp?id=<%=rs.getString("collection_id")%>"><i class="fa fa-remove" style="font-size:180%;color:black;"></i></a><br>
                      <a href="editimage.jsp?id=<%=rs.getString("collection_id")%>"><i class="fa fa-pencil-square-o" aria-hidden="true" style="font-size:180%;color:black;"></i></a>
                      </div>
                  </div>
                   
                </div>
            </div>
           </div>      
                  <%
                 }
                    }catch (Exception e){
                   out.println(e);
                }

                %>
            </div>
        </div>
      </div>
 </div>
   
    
    </body>
</html>