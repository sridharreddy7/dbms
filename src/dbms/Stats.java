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

public class Stats {
	private JSONArray resJsonArray = new JSONArray();
	private JSONArray resStatJsonArray = new JSONArray();
	
	public String stats() throws IOException, ClassNotFoundException, SQLException{
		//To check whether user logged in or not..
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		Cookie[] checkTheCookie = request.getCookies();
		boolean isUser= false;
		if(checkTheCookie!=null){
			for(Cookie cki: checkTheCookie){
				String name = cki.getName();
				
				if(name.equals("user")){
					isUser=true;
//					System.out.println(cki.getValue());
//					req.setAttribute("email", cki.getValue());
//					request.setAttribute("email", cki.getValue());
				}
			}
		}
		
		if(!isUser){
			response.sendRedirect("/Struts2Sample/_football_login.jsp");
		}
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","konyala", "YyAUFfpm2UkB!");
		Statement stmt = conn.createStatement ();
		
//		ResultSet rset = stmt.executeQuery ("select TEAM_NAME from TEAM");
//		ResultSet rset = stmt.executeQuery ("select team_name,won from team t, (select count(match_winner) as won,match.MATCH_WINNER from match natural join season where season_year = "+year+" group by match_winner)  winners  where winners.match_winner = t.team_id");
		ResultSet rset = stmt.executeQuery ("select venue_id, venue_name from venue");
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
			tempJson.put("venue_id", rset.getString(1));
			tempJson.put("venue_name", rset.getString(2));
		  	resJsonArray.put(tempJson);
		}
		request.setAttribute("resJson", resJsonArray);
		
		String batbowl = request.getParameter("batbowl");
		String team1 = request.getParameter("team1");
		String team2 = request.getParameter("team2");
		String venue = request.getParameter("venue");
		String season = request.getParameter("season");
		String winlose = request.getParameter("winlose");
		if(winlose!=null && winlose.equals("1")){
			winlose = team1;
		}
		else{
			winlose = team2;
		}
		
		if(batbowl==null || team1==null){
			return "success";
		}
		
		rset = stmt.executeQuery("select player.player_name,total_runs,fours,sixes from (select striker as player_id, sum(runs_scored) as total_runs,count(case runs_scored when 4 then 1 end) as fours,count(case runs_scored when 6 then 1 end) as sixes  from (select * from  player_match natural join match natural join team natural join ball_by_ball natural join batsman_scored natural join season natural join venue natural join country where  ((team_1 = "+team1+" and team_2 = "+team2+") or (team_2 = "+team1+" and team_1 = "+team2+")) and  match_winner = "+winlose+" and season_id = "+season+" and venue_id = "+venue+")  group by striker) tr, player where player.PLAYER_ID = tr.player_id");
		
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
			tempJson.put("player_name", rset.getString(1));
			tempJson.put("total_runs", rset.getString(2));
			tempJson.put("fours", rset.getString(3));
			tempJson.put("sixes", rset.getString(4));
			resStatJsonArray.put(tempJson);
		}
		request.setAttribute("resStatJson", resStatJsonArray);
		
		return "successStats";
	}

	
}
