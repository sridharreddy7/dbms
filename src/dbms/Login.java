package dbms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;


public class Login extends HttpServlet {
	private String username;
	private String password;
	private String email;
	
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String login() throws ServletException, IOException {
//		String username1 = request.getParameter("username");
//		String password1 = request.getParameter("password");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","smaddire", "rajbha0007");
			 Statement stmt = conn.createStatement ();
			 
			 response = ServletActionContext.getResponse();
			 String username1 = username;
			 
			 username = '\''+username+'\'';
			 password = '\''+password+'\'';
			 
			 ResultSet rset = stmt.executeQuery ("select username from usernames where username="+username+" and password="+password);
			 if(!rset.next()){
//				 return "failure";
		
					RequestDispatcher rd = getServletContext().getRequestDispatcher("_football_index.html");
					PrintWriter out= response.getWriter();
					out.println("<font color=red>Either user name or password is wrong.</font>");
					rd.include(request, response);
				 
			 }
			 else{
				 HttpServletRequest request = ServletActionContext.getRequest();
				 HttpSession session = request.getSession();
				 
				 session.setAttribute("username", username1);
				 session.setMaxInactiveInterval(30*60);
				 
				 
				 Cookie loginCookie = new Cookie("user", username1);
				 loginCookie.setMaxAge(60 * 60 * 4);
				 response.addCookie(loginCookie);
//				 response.sendRedirect("_football_index.jsp");
				 setEmail(username1);
				 request.setAttribute("user", username1);
				 
				 
			 }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
//		return "success";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

//	public String login()  throws SQLException{
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","smaddire", "rajbha0007");
//			 Statement stmt = conn.createStatement ();
//			 String userName = username;
//			 
//			 response = ServletActionContext.getResponse();
//			 
//			 
//			 username = '\''+username+'\'';
//			 password = '\''+password+'\'';
//			 
//			 ResultSet rset = stmt.executeQuery ("select username from usernames where username="+username+" and password="+password);
//			 if(!rset.next()){
//				 return "failure"; 
//			 }
//			 else{
//				 Cookie loginCookie = new Cookie("user", userName);
//				 loginCookie.setMaxAge(60 * 60 * 4);
//				 response.addCookie(loginCookie);
//				 
//			 }
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		 
//		 
//		return "success";
//	}
	
	
	
}
