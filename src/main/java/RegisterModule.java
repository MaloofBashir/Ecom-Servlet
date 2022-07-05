

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns= "/RegisterModule")
public class RegisterModule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("femail");
		String phone=request.getParameter("fphone");
		String password=request.getParameter("fpass");
		
		RequestDispatcher dispatcher=null;
		Connection con=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecom?useSSL=false&allowPublicKeyRetrieval=true","root","Mal@#321");
			String query="insert into Registration (firstname,lastname,email,phone,paswd) values (?,?,?,?,?)";
			PreparedStatement pst =con.prepareStatement(query);
			
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, email);
			pst.setString(4, phone);
			pst.setString(5,password);
			
			//dispatcher=request.getRequestDispatcher("RegisterModule.html");
		
			
			int rowcount=pst.executeUpdate();
			
			if(rowcount>0) {
				request.setAttribute("status", "success");
				response.sendRedirect("RegisterModule.jsp?msg=valid");
			}
				

			else {
				request.setAttribute("status", "failed");
				response.sendRedirect("RegisterModule.jsp?msg=invalid");
			}
			
			//dispatcher.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("e");
			request.setAttribute("status", "failed");
			response.sendRedirect("RegisterModule.jsp?msg=invalid");
			
		}
	}
}


