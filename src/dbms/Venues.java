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

public class Venues {
	
	private JSONArray resJsonArray = new JSONArray();
	
	public String venues() throws IOException, ClassNotFoundException, SQLException{
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		
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
		ResultSet rset = stmt.executeQuery ("select ven.venue_name, ven.matches_hosted, c.CITY_NAME, co.COUNTRY_NAME from (select ve.venue_name,v.city_id,ve.Matches_Hosted from  (SELECT venue.venue_name, count(venue.venue_name) AS Matches_Hosted  FROM   match  INNER JOIN venue  ON match.venue_id = venue.venue_id  GROUP BY venue.venue_name  ORDER BY matches_hosted DESC) ve, venue v where v.venue_name = ve.venue_name) ven ,city c, country co where ven.city_id = c.city_id and c.COUNTRY_ID = co.COUNTRY_ID");
		
//		int count=1;
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
//			tempJson.put("pos", count);
//			count++;
			tempJson.put("venue_name", rset.getString(1));
			tempJson.put("matches_hosted", rset.getString(2));
			tempJson.put("city", rset.getString(3));
			tempJson.put("country", rset.getString(4));

//			tempJson.put("lost", rset.getString(4));
//		  	nameList.add(rset.getString(1));
//		  	resJson.put("teamName", rset.getString(1));
		  	getResJsonArray().put(tempJson);
		}
		
//		System.out.println(getResJsonArray().length());
		request.setAttribute("json", getResJsonArray());
		return "success";
	}

	public JSONArray getResJsonArray() {
		return resJsonArray;
	}

	public void setResJsonArray(JSONArray resJsonArray) {
		this.resJsonArray = resJsonArray;
	}
}
