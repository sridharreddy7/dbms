package dbms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

public class SignUp {
	private String username;
	private String password;
	private String team;
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
			HttpServletRequest request = ServletActionContext.getRequest();
//			request.getParameter(arg0)
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","smaddire", "rajbha0007");
			 Statement stmt = conn.createStatement ();
			 username = '\''+username+'\'';
			 password = '\''+password+'\'';
//			 team = '\''+team+'\'';
			 int teamNum = Integer.parseInt(team);
			 ResultSet rset = stmt.executeQuery ("select username from usernames where username="+username);
//				 System.out.println(rset.toString());
			 if(rset.next()){
				 return "failure"; 
			 }
			 else{
				 stmt.executeQuery ("Insert into usernames values ("+username +", "+password+")" );
				 Connection connTeam = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","konyala", "YyAUFfpm2UkB!");
				 Statement stmtTeam = connTeam.createStatement ();
//				 stmtTeam.executeQuery ("Insert into follows values ("+username +", "+teamNum+")" );
				 stmtTeam.executeQuery ("Insert into follows values ("+teamNum+","+username +")");
				 
			 }
			  
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
			return "failure";
		}
		
		return "success";
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	
}
