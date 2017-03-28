package dbms;

import java.sql.*;
import java.util.ArrayList;


public class HelloDBMS {
	
	private String name;
	private String number;
	private ArrayList<String> nameList = new ArrayList<String>();
	
	   public String execute() throws Exception {
		  name = getName();
		  number = getNumber();
		  try{
			  Class.forName("oracle.jdbc.driver.OracleDriver");  
			  
	//		   OracleDriver od = new  oracle.jdbc.driver.OracleDriver();
	//		  DriverManager.registerDriver(od);
			  
			  Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","smaddire", "rajbha0007");
			  
			  Statement stmt = conn.createStatement ();
			  ResultSet rset = stmt.executeQuery ("select Name from Country where rownum <= "+number);
//		      System.out.println (rset.toString());
			  while (rset.next ()){
//			        System.out.println (rset.getString (1));
			  		name = rset.getString(1);
//			  		System.out.print(name);
			  		nameList.add(name);
			  }
			  
			  conn.close();
		  }
		  catch(Exception e){
			  e.printStackTrace();
		  }
	      return "success";
	   }
	   
	   public String getSomethingElse(){
		   return "success";
	   }
	   
	   
	   public String getName() {
	      return name;
	   }

	   public void setName(String name) {
	      this.name = name;
	   }

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public ArrayList<String> getNameList() {
		return nameList;
	}

	public void setNameList(ArrayList<String> nameList) {
		this.nameList = nameList;
	}
}
