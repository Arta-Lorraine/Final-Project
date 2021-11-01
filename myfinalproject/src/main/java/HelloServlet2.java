

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/helloServlet")
public class HelloServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("yourName");

		PrintWriter textOutput = null;
		
		/*try {
			
			String outputFile = "run.bat";
			textOutput = new PrintWriter(new FileOutputStream(outputFile));
			textOutput.println("D:");

			textOutput.println("cd D:\\mytemp");
			textOutput.println("adb install mytemp.apk");
			textOutput.print("adb shell monkey -p "+ name + " -c android.intent.category.LAUNCHER 1");
			textOutput.close();
			outputFile = "stop.bat";
			textOutput = new PrintWriter(new FileOutputStream(outputFile));
			textOutput.println("adb shell am force-stop " + name);
			textOutput.println("adb install -r screanon.apk");
			textOutput.println("adb shell monkey -p com.example.screanon -c android.intent.category.LAUNCHER 1");
			textOutput.print("adb shell pm uninstall -k " + name);
			
			textOutput.close();
			}catch (FileNotFoundException e) {
				e.printStackTrace();
			}*/
		
			String command = "/home/user1/ 1234.sh";
			Runtime rt = Runtime.getRuntime();
			Process pr = rt.exec(command);
			//Runtime.getRuntime().exec("/home/idw/ 1234.sh");
			//com.example.kai.myapplication
			try {
				Thread.sleep(60000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//Runtime.getRuntime().exec("/home/idw/ 4321.sh");
			//com.example.kai.myapplication
			
		
	}

}
