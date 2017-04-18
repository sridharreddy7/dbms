package dbms;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONObject;

public class Matches {
	private JSONArray resJsonArray = new JSONArray();
	
	public String matches() throws IOException, ClassNotFoundException, SQLException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();

		String userid = "";
		Cookie[] checkTheCookie = request.getCookies();
		boolean isUser= false;
		if(checkTheCookie!=null){
			for(Cookie cki: checkTheCookie){
				String name = cki.getName();
				
				if(name.equals("user")){
					userid = cki.getValue();
					isUser=true;
				}
			}
		}
		userid='\''+userid+'\'';
		
		if(!isUser){
			response.sendRedirect("/Struts2Sample/_football_login.jsp");
			return "";
		}
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","konyala", "YyAUFfpm2UkB!");
		Statement stmt = conn.createStatement ();
		
//		ResultSet rset = stmt.executeQuery ("select TEAM_NAME from TEAM");
//		ResultSet rset = stmt.executeQuery ("select team_name,won from team t, (select count(match_winner) as won,match.MATCH_WINNER from match natural join season where season_year = "+year+" group by match_winner)  winners  where winners.match_winner = t.team_id");
		ResultSet rset = stmt.executeQuery ("select team_id from follows where user_id="+ userid);

		String teamNum = "";
		while (rset.next ()){
			teamNum = rset.getString(1);
		}
		
		rset = stmt.executeQuery("select team_1,team_2,match_date,venue_name,season_year,team.TEAM_NAME as winner from ( select match.match_id,match.match_date,teams.team_1,teams.team_2,venue.venue_name,season.season_year,match.match_winner from (select one.match_id,team_1,team_2 from  (select match_id,team.TEAM_NAME as team_1 from  (select * from match where team_1 = "+teamNum+" or team_2 = "+teamNum+") t, team where team_1 = team.TEAM_ID) one, (select match_id,team.TEAM_NAME as team_2 from  (select * from match where team_1 = "+teamNum+" or team_2 = "+teamNum+") t, team where team_2 = team.TEAM_ID) two where one.match_id = two.match_id) teams, match,venue ,season  where teams.match_id = match.match_id and match.venue_id = venue.VENUE_ID and match.SEASON_ID = season.SEASON_ID) fin, team where fin.match_winner = team.TEAM_ID order by match_date desc");
		
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
			tempJson.put("team_1", rset.getString(1));
			tempJson.put("team_2", rset.getString(2));
			String[] tempVar = rset.getString(3).split(" ");
			tempJson.put("match_date", tempVar[0]);
			tempJson.put("venue_name", rset.getString(4));
			tempJson.put("season_year", rset.getString(5));
			tempJson.put("winner", rset.getString(6));
			resJsonArray.put(tempJson);
//			teamNum = rset.getString(1);
		}
		request.setAttribute("resJson", resJsonArray);
		return "success";
	}
}
