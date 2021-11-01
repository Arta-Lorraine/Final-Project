

import java.io.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;


@WebServlet("/uploader")
public class Uploader extends HttpServlet {
   
 
   private static final long serialVersionUID = 1L;
   private boolean isMultipart;
   private String filePath;
   private int maxFileSize = 2048000*16;
   private int maxMemSize = 2048;
   private File file ;

   public void init( ){
      // Get the file location where it would be stored.
      filePath = "D:\\mytemp\\"   ;//getServletContext().getInitParameter("file-upload"); 
   }
   
   public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, java.io.IOException {
	   
      // Check that we have a file upload request
      isMultipart = ServletFileUpload.isMultipartContent(request);
      response.setContentType("text/html");
      java.io.PrintWriter out = response.getWriter( );
   
      if( !isMultipart ) {
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Servlet upload</title>");  
         out.println("</head>");
         out.println("<body>");
         out.println("<p>No file uploaded</p>"); 
         out.println("</body>");
         out.println("</html>");
         return;
      }
  
      DiskFileItemFactory factory = new DiskFileItemFactory();
  
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File( "D:\\mytemp\\" ));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );

      try { 
         List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();

         out.println("<html>");	
         out.println("<head>");
         out.println("<title>Servlet upload</title>");  
         out.println("</head>");
         out.println("<body>");
   
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
               String fileName = "app-debug";//fi.getName();
               String contentType = fi.getContentType();
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
            
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))+".apk") ;
               } else {
                  file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)+".apk") ;
               }
               fi.write( file ) ;
               out.println("Uploaded Filename: " + filePath +fileName + ".apk <br>");
            }
         }
         out.println("</body>");
         out.println("</html>");
         } catch(Exception ex) {
            System.out.println(ex);
         }
      
      
		RequestDispatcher rd = request.getRequestDispatcher("/nao.jsp"); 
		try 
		{ 
			rd.forward(request, response); 
			return; 
		}
		catch(Exception e){
			

		} 
           
      }
      
      public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, java.io.IOException {

         throw new ServletException("GET method used with " +
            getClass( ).getName( )+": POST method required.");
      }
}


