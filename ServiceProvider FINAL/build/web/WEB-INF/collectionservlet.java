
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet(urlPatterns = {"/collectionservlet"})
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class collectionservlet extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3308/rental";
    private String dbUser = "root";
    private String dbPass = "root";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
         String collection_name=request.getParameter("collection_name");
         String category_name=request.getParameter("category_name");
         String collection_info=request.getParameter("collection_info");
         String collection_quantity=request.getParameter("collection_quantity");
         String collection_price=request.getParameter("collection_price");
         
         
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("collection_image");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "insert into collection(collection_name, category_name, collection_info, collection_quantity, collection_price, collection_image) values ('"+collection_name+"','"+category_name+"','"+collection_info+"','"+collection_quantity+"','"+collection_price+"','"+filePart+"')";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, collection_name);
            statement.setString(2, category_name);
            statement.setString(3, collection_info);
            statement.setString(4, collection_quantity);
            statement.setString(5, collection_price);
             
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(6, inputStream);
            }
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
        }
    }
}