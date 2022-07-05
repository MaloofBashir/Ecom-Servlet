

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Welcome
 */
@WebServlet("/Welcome")
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String firstname=(String)session.getAttribute("fname");
		String lastname=(String)session.getAttribute("lname");
		
		String email=(String)session.getAttribute("email1"); 
		String passwd=(String )session.getAttribute("passw");
		if (email.equals("admin@admin.com") && passwd.equals("Admin@#321")){
			response.sendRedirect("stock.html");
		}
		else {
			response.sendRedirect("home.jsp");
		}
		
		out.println("<h1> Welcome " + firstname +" "+ lastname+"</h1>");
		if (!firstname.equals("")) {
			out.println("<a href='changepassword.html'> Change Password </a> ");
		}
	}


}
