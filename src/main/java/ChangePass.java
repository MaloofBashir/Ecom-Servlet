

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangePass
 */
@WebServlet("/ChangePass")
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String oldpassword=request.getParameter("oldpassword");
		String newpassword=request.getParameter("newpassword");
		//int id=(int) session.getAttribute("id");
		String email = (String) session.getAttribute("email1");
		Connection con=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecom?useSSL=false&allowPublicKeyRetrieval=true","root","Mal@#321");
			String query="UPDATE Registration SET paswd=? WHERE email=? and paswd=? ";
			PreparedStatement pst =con.prepareStatement(query);
			
			pst.setString(1, newpassword);
			pst.setString(2,email);
			pst.setString(3, oldpassword);
			
			PrintWriter out=response.getWriter();
			
			//dispatcher=request.getRequestDispatcher("RegisterModule.html");
		
			System.out.println("going to execute");
			int rowcount=pst.executeUpdate();
			System.out.println("value of rowocunt is"+rowcount);
			
			if(rowcount>0) {
				out.println("Succefully changed password");
			}
				

			else {
				out.println("something went wrong");
			}
			
			//dispatcher.forward(request, response);
		}
		catch(Exception e ) {
			
			e.printStackTrace();	
		
	}


	}

}
