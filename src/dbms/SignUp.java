package dbms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SignUp {
	private String username;
	private String password;
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
	
	public String signup() throws SQLException{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","smaddire", "rajbha0007");
			 Statement stmt = conn.createStatement ();
			 username = '\''+username+'\'';
			 password = '\''+password+'\'';
			  
			  
			 ResultSet rset = stmt.executeQuery ("select username from usernames where username="+username);
//				 System.out.println(rset.toString());
			 if(rset.next()){
				 return "failure"; 
			 }
			 else{
				 stmt.executeQuery ("Insert into usernames values ("+username +", "+password+")" );
			 }
			  
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
			return "failure";
		}
		
		return "success";
	}
	
}
