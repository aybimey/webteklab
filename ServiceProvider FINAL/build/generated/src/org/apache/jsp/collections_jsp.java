package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;

public final class collections_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<!-- meta -->\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" http-equiv=\"Content-Type\">\r\n");
      out.write("\r\n");
      out.write("  <title>Madameoiselle</title>\r\n");
      out.write("  <meta content=\"\" name=\"keywords\">\r\n");
      out.write("  <meta content=\"\" name=\"description\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Google Fonts -->\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Bootstrap CSS File -->\r\n");
      out.write("  <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Libraries CSS Files -->\r\n");
      out.write("  <link href=\"lib/ionicons/css/ionicons.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"lib/magnific-popup/magnific-popup.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"lib/hover/hover.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Blog Stylesheet File -->\r\n");
      out.write("  <link href=\"css/blog.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Main Stylesheet File -->\r\n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Responsive css -->\r\n");
      out.write("  <link href=\"css/responsive.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Favicon -->\r\n");
      out.write("  <link rel=\"shortcut icon\" href=\"images/favicon.png\">\r\n");
      out.write("  \r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Great+Vibes\" rel=\"stylesheet\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("    .madam{color:black;\r\n");
      out.write("    font-family:'Great vibes', cursive;\r\n");
      out.write("    margin-top:2.5%;\r\n");
      out.write("    color:#b8a07e;}\r\n");
      out.write("    \r\n");
      out.write("    .madam:hover{\r\n");
      out.write("        color:black;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    ul li a:hover{\r\n");
      out.write("        color:#b8a07e;  \r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("  <!-- start section navbar -->\r\n");
      out.write("  <nav id=\"main-nav-subpage\" class=\"subpage-nav\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"logo\" style=\" width:30%;\">\r\n");
      out.write("\t\t\t<div class=\"logo-left\" style=\"float:left; width:30%;\">\r\n");
      out.write("\t\t\t\t<img src=\"images/gown.png\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"logo-right\" style=\"float:right; width:70%;\">\r\n");
      out.write("\t\t\t\t<a href=\"home.jsp\"><h1 class =\"madam\">Madamoiselle</h1></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"responsive\"><i data-icon=\"m\" class=\"ion-navicon-round\"></i></div>\r\n");
      out.write("\t\t\r\n");
      out.write("        <ul class=\"nav-menu list-unstyled\" style=\"margin-top:0%;\">\r\n");
      out.write("          <li><a href=\"home.jsp\" class=\"smoothScroll\" ><i class=\"fa fa-home\" aria-hidden=\"true\"></i> Home</a></li>\r\n");
      out.write("          <li><a href=\"collections.jsp\" class=\"smoothScroll\" style=\"color:#b8a07e;\"><i class=\"fa fa-female\" aria-hidden=\"true\"></i> Collections</a></li>\r\n");
      out.write("          <li><a href=\"planner.jsp\" class=\"smoothScroll\"><i class=\"fa fa-shopping-basket\" aria-hidden=\"true\"></i> Planner</a></li>\r\n");
      out.write("          <li><a href=\"reservation.jsp\" class=\"smoothScroll\"><i class=\"fa fa-address-book\" aria-hidden=\"true\"></i> Reservation</a></li>\r\n");
      out.write("          <li><a href=\"#\" class=\"smoothScroll\"><a href=\"logout.jsp\" ><i class=\"fa fa-caret-square-o-right\" aria-hidden=\"true\"></i> Logout</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </nav>\r\n");
      out.write("  <!-- End section navbar -->\r\n");
      out.write("\r\n");
      out.write(" <!-- start section journal -->\r\n");
      out.write("  <div id=\"journal-blog\" class=\"text-left  paddsections\" style=\"margin-top:5%;\">\r\n");
      out.write("    <div class=\"container\" style=\"margin-left: 80%;\">\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-secondary\" data-toggle=\"modal\" data-target=\"#myModal\">\r\n");
      out.write("          <i class=\"fa fa-plus\" aria-hidden=\"true\"></i> Add Collection\r\n");
      out.write("      </button>\r\n");
      out.write("    </div>\r\n");
      out.write(" </div>\r\n");
      out.write(" \r\n");
      out.write("    <!-- start signup -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <form action=\"collectionservlet\" method=\"post\" role=\"form\" class=\"contactForm\"> \r\n");
      out.write("                <input type=\"file\" name=\"collection_image\"/>\r\n");
      out.write("                    <select class=\"custom-select\" name=\"category_name\"><br>\r\n");
      out.write("                        <option>Select Category</option>\r\n");
      out.write("                         ");

                                try
                               {        
                                  Class.forName("com.mysql.jdbc.Driver");
                                  String url="jdbc:mysql://localhost:3308/rental";
                                  String username="root";
                                  String password="root";
                                  String query="select * from category";
                                  Connection conn=DriverManager.getConnection(url, username, password);
                                  Statement stmt=conn.createStatement();
                                  ResultSet rs=stmt.executeQuery(query);
                                  while(rs.next())
                                  {
                         
      out.write("\r\n");
      out.write("                  \r\n");
      out.write("                        <option value =\" ");
      out.print(rs.getString("category_name"));
      out.write(" \"> ");
      out.print(rs.getString("category_name") );
      out.write("</option> \r\n");
      out.write("                     ");

                        }
                     
      out.write(" </select> <br><br>\r\n");
      out.write("                  ");

                     rs.close();
                     stmt.close();
                     conn.close();
                    }
                        catch(Exception e)
                        {
                             e.printStackTrace();
                        }
                    
      out.write("\r\n");
      out.write("                    <input type=\"text\" name=\"collection_name\" class=\"form-control\" placeholder=\"Name of your design\" />\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"collection_price\" placeholder=\"Price\" /> \r\n");
      out.write("                    <input type=\"number\" class=\"form-control\" name=\"collection_quantity\" placeholder=\"Available pieces\" />\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"collection_info\" placeholder=\"info\" />\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"modal-footer\">\r\n");
      out.write("                        <input type=\"submit\" class=\"btn btn-defeault btn-send\" value=\"Add\"/>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </form>\r\n");
      out.write("          \r\n");
      out.write("\r\n");
      out.write("  <!-- end signup -->\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
