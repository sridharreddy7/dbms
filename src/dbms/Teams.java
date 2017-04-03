package dbms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class Teams {
	private ArrayList<String> nameList = new ArrayList<String>();
	private JSONObject resJson = new JSONObject();
	private JSONArray resJsonArray = new JSONArray();
	
	public String teams() throws IOException, ClassNotFoundException, SQLException, JSONException{
		//To check whether user logged in or not..
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		
		String year = request.getParameter("year");
		if(year==null){
			year="2008";
		}
		System.out.println(year);
		Cookie[] checkTheCookie = request.getCookies();
		boolean isUser= false;
		if(checkTheCookie!=null){
			for(Cookie cki: checkTheCookie){
				String name = cki.getName();
				
				if(name.equals("user")){
					isUser=true;
				}
			}
		}
		
		if(!isUser){
			response.sendRedirect("/Struts2Sample/_football_login.jsp");
			return "";
		}
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","konyala", "YyAUFfpm2UkB!");
		Statement stmt = conn.createStatement ();
		
//		ResultSet rset = stmt.executeQuery ("select TEAM_NAME from TEAM");
//		ResultSet rset = stmt.executeQuery ("select team_name,won from team t, (select count(match_winner) as won,match.MATCH_WINNER from match natural join season where season_year = "+year+" group by match_winner)  winners  where winners.match_winner = t.team_id");
		ResultSet rset = stmt.executeQuery ("select w.team_name,total,won,lost from ( select team_name,won from team t, (select count(match_winner) as won,match.MATCH_WINNER from match natural join season where season_year = "+year+" group by match_winner) winners where winners.match_winner = t.team_id) w, (select team_name,sum(count) as lost from (select team_1 as teamid,count(team_1) as count from match natural join season where team_1 != match_winner and season_year = "+year+" group by team_1 union select team_2 as teamid,count(team_2) as count from match natural join season where team_2 != match_winner and season_year = "+year+" group by team_2) lost,team t where t.TEAM_ID = lost.teamid group by team_name) l, (select team_name,sum(count) as total from (select count(team_1) as count,team_1 as teamid from match natural join season where season_year = "+year+" group by team_1 union select count(team_2) as count,team_2 as teamid from match natural join season where season_year = "+year+" group by team_2) total,team t where t.team_id = total.teamid group by team_name) t where w.team_name = l.team_name and l.team_name = t.team_name order by won desc");
		
		int count=1;
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
			tempJson.put("pos", count);
			count++;
			tempJson.put("teamName", rset.getString(1));
			tempJson.put("total", rset.getString(2));
			tempJson.put("won", rset.getString(3));
			tempJson.put("lost", rset.getString(4));
		  	nameList.add(rset.getString(1));
//		  	resJson.put("teamName", rset.getString(1));
		  	resJsonArray.put(tempJson);
		}
		System.out.println(resJsonArray.length());

		request.setAttribute("json", resJsonArray);
		return "success";
	}

	public ArrayList<String> getNameList() {
		return nameList;
	}

	public void setNameList(ArrayList<String> nameList) {
		this.nameList = nameList;
	}

	public JSONObject getResJson() {
		return resJson;
	}

	public void setResJson(JSONObject resJson) {
		this.resJson = resJson;
	}

	public JSONArray getResJsonArray() {
		return resJsonArray;
	}

	public void setResJsonArray(JSONArray resJsonArray) {
		this.resJsonArray = resJsonArray;
	}
}
