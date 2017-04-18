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

public class Graph {
	
	private JSONArray resJsonArray = new JSONArray();
	
	public String graph() throws IOException, ClassNotFoundException, SQLException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		Cookie[] checkTheCookie = request.getCookies();
		System.out.println(request.getRequestURI());
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
		ResultSet rset = stmt.executeQuery ("select b.striker,season_year,count(runs_scored) as runs_in_season from (((ball_by_ball b full outer join batsman_scored bs on b.MATCH_ID = bs.MATCH_ID and b.OVER_ID = bs.OVER_ID and b.BALL_ID = bs.BALL_ID)  full outer join match  m on b.MATCH_ID = m.MATCH_ID ) full outer join season s on m.SEASON_ID = s.season_id) where striker = 42 group by b.STRIKER,s.SEASON_YEAR order by s.season_year asc");
		
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
			tempJson.put("player_id", rset.getString(1));
			tempJson.put("season_year", rset.getString(2));
			tempJson.put("runs_in_season", rset.getString(3));
			
		  	getResJsonArray().put(tempJson);
		}
		
		rset = stmt.executeQuery ("select b.striker,season_year,count(runs_scored) as runs_in_season from (((ball_by_ball b full outer join batsman_scored bs on b.MATCH_ID = bs.MATCH_ID and b.OVER_ID = bs.OVER_ID and b.BALL_ID = bs.BALL_ID)  full outer join match  m on b.MATCH_ID = m.MATCH_ID ) full outer join season s on m.SEASON_ID = s.season_id) where striker = 8 group by b.STRIKER,s.SEASON_YEAR order by s.season_year asc");
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
			tempJson.put("player_id", rset.getString(1));
			tempJson.put("season_year", rset.getString(2));
			tempJson.put("runs_in_season", rset.getString(3));
			
		  	getResJsonArray().put(tempJson);
		}
		
		request.setAttribute("resJson", getResJsonArray());
//		response.setContentType("application/json");
//		response.getWriter().write(resJsonArray.toString());
//		response.getWriter().print(resJsonArray);
		return "success";
	}

	public JSONArray getResJsonArray() {
		return resJsonArray;
	}

	public void setResJsonArray(JSONArray resJsonArray) {
		this.resJsonArray = resJsonArray;
	}
}
