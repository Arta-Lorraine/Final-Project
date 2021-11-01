
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyLoginSystem
 */
@WebServlet("/mylogintest")
public class mylogintest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mylogintest() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String account = request.getParameter("name");
		String password = request.getParameter("pw");
		PrintWriter writer = response.getWriter();
		writer.println("<h1>Hello " + account + "</h1>");
	//	writer.println("<h1>password"+password+"</h1>");
	
			
		RequestDispatcher rd = request.getRequestDispatcher("/nao.jsp"); 
		try 
		{ 
			rd.forward(request, response); 
			writer.close();
			return; 
		}
		catch(Exception e){
			
			writer.println("<h1>error "  + "</h1>");	
			writer.close();

		} 
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
