package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class test2_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
      out.write("\n");
      out.write("<HTML>\n");
      out.write("     <HEAD>\n");
      out.write("     <TITLE>Inserted data in a Table</TITLE>\n");
      out.write("     </HEAD>\n");
      out.write("     <BODY BGCOLOR=\"cyan\">\n");
      out.write("     <H1>Inserted data in a Table</H1>\n");
      out.write("     ");
 
         Connection connection =DriverManager.getConnection("jdbc:odbc:practicumproj");
         Statement statement = connection.createStatement();
         String command = "INSERT INTO participant(p_name, p_email, p_number) VALUES('haha,'Vikas',12123123)";
         statement.executeUpdate(command);
         command = "INSERT INTO participant(p_name, p_email, p_number) VALUES('haha,'Vikas',12123123)";
         statement.executeUpdate(command);
         ResultSet resultset = 
         statement.executeQuery("select * from Employee");
         while(resultset.next()){ 
      
      out.write("\n");
      out.write("        <TABLE BORDER=\"1\">\n");
      out.write("          <TR>\n");
      out.write("              <TH>name</TH>\n");
      out.write("              <TH>email</TH>\n");
      out.write("              <TH>NUMBER</TH>\n");
      out.write("         </TR>\n");
      out.write("          <TR>\n");
      out.write("              <TD> ");
      out.print( resultset.getString(1) );
      out.write(" </TD>\n");
      out.write("              <TD> ");
      out.print( resultset.getString(2) );
      out.write(" </TD>\n");
      out.write("              <TD> ");
      out.print( resultset.getString(3) );
      out.write(" </TD>\n");
      out.write("          </TR>\n");
      out.write("       </TABLE>\n");
      out.write("       ");
 
        } 
       
      out.write("\n");
      out.write("      </BODY>\n");
      out.write("</HTML>\n");
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
