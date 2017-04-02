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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class Logout {
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String username1 = request.getParameter("username");
//		String password1 = request.getParameter("password");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","smaddire", "rajbha0007");
			 Statement stmt = conn.createStatement ();
			 
			 response = ServletActionContext.getResponse();
			 
			 HttpSession session = request.getSession(false);
			 
			 if(session != null){
		    		session.invalidate();
		    	}
		    	response.sendRedirect("_football_shop-login.html");
			 
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
//		return "success";
	}
	
	
	public String logout() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		
		 HttpServletResponse response = ServletActionContext.getResponse();
		 
		 HttpSession session = request.getSession(false);
		 
		 if(session != null){
	    		session.invalidate();
	    	}

//		Cookie[] cookie = request.getCookies();
//		if(cookie!=null){
//			int cookieLength = cookie.length;
//			for(int i=0;i<cookieLength;i++){
//				Cookie cki = cookie[i];
//				String ckName = cki.getName();
//				if(ckName.equals("user")){
//					cki.setValue(null);
//					cki.setPath("/Struts2Sample");
//					cki.setMaxAge(0);
//					response.addCookie(cki);
//				}
//			}
//		}
		 Cookie killMyCookie = new Cookie("user", null);
		 killMyCookie.setMaxAge(0);
		 killMyCookie.setPath("/");
		 response.addCookie(killMyCookie);
		 
		return "success";
	}
}
