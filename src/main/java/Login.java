

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("femail");
		String password=request.getParameter("fpass");
		
		//HttpSession session=request.getSession();
		
		
		
				
		Connection con=null;
		RequestDispatcher dipatcher=null;
		PrintWriter out=response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecom?useSSL=false&allowPublicKeyRetrieval=true","root","Mal@#321");
			String query="select * from Registration where email=? and paswd=?" ;
			PreparedStatement pst =con.prepareStatement(query);
			
			pst.setString(1,email);
			pst.setString(2,password);
			
			ResultSet rs=pst.executeQuery();
			
			if(rs.next()) {
				HttpSession session = request.getSession();
	            
				String name=rs.getString("firstname");
				String lname=rs.getString("lastname");
				String password1=rs.getString("paswd");
				String email1=rs.getString("email");
				
				session.setAttribute("fname",name);
				session.setAttribute("lname", lname);
				session.setAttribute("passw", password1);
				session.setAttribute("email1", email1);
				response.sendRedirect("Welcome");
				
			}
			else {
				out.println("<h1>email or password is wrong</h1>");
				request.setAttribute("status", "failed");
				
				
			}
			
			
	}
		catch(Exception e) {
			e.printStackTrace();		}

}
}
