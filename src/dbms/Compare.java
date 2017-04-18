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

public class Compare {
	private JSONArray resJsonArrayPlayer1 = new JSONArray();
	private JSONArray resJsonArrayPlayer2 = new JSONArray();
	private JSONArray resStatJsonArrayPlayer1 = new JSONArray();
	private JSONArray resStatJsonArrayPlayer2 = new JSONArray();
	
	private String player1;
	private String player2;
	
	private JSONArray resPlayerList = new JSONArray(); 
	
	public String compare() throws IOException, ClassNotFoundException, SQLException{
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
		
		player1 = request.getParameter("player1");
		player2 = request.getParameter("player2");
		
		if(player1==null && player2==null){
//			return "success";
			player1 = "8";
			player2 = "10";
		}
		
		

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl","konyala", "YyAUFfpm2UkB!");
		Statement stmt = conn.createStatement ();
		
//		ResultSet rset = stmt.executeQuery ("select TEAM_NAME from TEAM");
//		ResultSet rset = stmt.executeQuery ("select team_name,won from team t, (select count(match_winner) as won,match.MATCH_WINNER from match natural join season where season_year = "+year+" group by match_winner)  winners  where winners.match_winner = t.team_id");
		ResultSet rset = stmt.executeQuery ("select nms.player_id,nms.player_name,hs.highest,frs.fours from ((select striker as player_id,max(runs) as highest from (select striker,sum(runs_scored) as runs,match_id from  (select * from ball_by_ball natural join batsman_scored) where striker = "+player1+" group by match_id,striker) group by striker UNION select striker as player_id,max(runs) as highest from (select striker,sum(runs_scored) as runs,match_id from (select * from ball_by_ball natural join batsman_scored) where striker = "+player2+" group by match_id,striker) group by striker) hs full outer join (select striker as player_id,count(runs_scored) as fours from (select * from ball_by_ball natural join batsman_scored)  where runs_scored = 4 and striker = "+player1+" group by striker union  select striker as player_id,count(runs_scored) as fours from (select * from ball_by_ball natural join batsman_scored)  where runs_scored = 4 and striker = "+player2+" group by striker) frs on hs.player_id = frs.player_id) full outer join (select player_id,player_name from player where player_id="+player1+" union select player_id,player_name from player where player_id="+player2+") nms on hs.player_id = nms.player_id");
//		select mp.player_id,mp.matches_played, sea.seasons,tr.total_runs,balls_bowled,wickets_taken,batting_hand,bowling_skill from  ((( ( (( ((select player_id,count(player_id) as matches_played  from player_match natural join match where player_id = 8 group by player_id) union  (select player_id,count(player_id) as matches_played  from player_match natural join match where player_id = 142 group by player_id)) mp full outer join   (select player_id,count(season_year) as seasons from ((select season_year,count(season_year) as matches_played,pm.player_id   from player_match pm natural join match m  natural join season s where player_id = 8 group by season_year,pm.player_id) union  (select season_year,count(season_year) as matches_played,pm1.player_id  from player_match pm1 natural join match m1 natural join season s1 where player_id = 142 group by season_year,pm1.player_id) )group by player_id) sea on mp.player_id = sea.player_id) full OUTER JOIN  (select striker as player_id,sum(batsman_scored.RUNS_SCORED) as total_runs from BALL_BY_BALL natural join batsman_scored where striker = 8  group by BALL_BY_BALL.STRIKER union  select striker as player_id,sum(batsman_scored.RUNS_SCORED) as total_runs from BALL_BY_BALL natural join batsman_scored where striker = 142  group by BALL_BY_BALL.STRIKER) tr on mp.player_id = tr.player_id) full outer join (select bowler as player_id,count(*) as balls_bowled from ball_by_ball where bowler = 8 group by bowler union  select bowler as player_id,count(*) as balls_bowled from ball_by_ball where bowler = 142 group by bowler) b on mp.player_id = b.player_id) full OUTER JOIN  (select bowler as player_id,count(*) as wickets_taken from ball_by_ball natural join wicket_taken where bowler = 8 group by bowler union  select bowler as player_id,count(*) as wickets_taken from ball_by_ball natural join wicket_taken where bowler = 142 group by bowler) wt on mp.player_id = wt.player_id) full outer join (select p.player_id,bs.BATTING_HAND from player p, batting_style bs where p.BATTING_HAND = bs.BATTING_ID and player_id = 8 union  select p.player_id,bs.BATTING_HAND from player p, batting_style bs where p.BATTING_HAND = bs.BATTING_ID and player_id = 142) bts on mp.player_id = bts.player_id) full outer join (select p.player_id,bos.BOWLING_SKILL from player p, BOWLING_STYLE bos where p.BOWLING_SKILL = bos.BOWLING_ID and player_id = 8 union  select p.player_id,bos.BOWLING_SKILL from player p, BOWLING_STYLE bos where p.BOWLING_SKILL = bos.BOWLING_ID and player_id = 142) bows on mp.player_id = bows.player_id)
		
//		int count=1;
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
			String id = rset.getString(1);
			if(player1.equals(rset.getString(1))){
				tempJson.put("playerid", (rset.getString(1)==null)? "-":rset.getString(1) );
				tempJson.put("playername", (rset.getString(2)==null)? "-":rset.getString(2) );
				tempJson.put("highest", (rset.getString(3)==null)? "-":rset.getString(3) );
				tempJson.put("fours", (rset.getString(4)==null)? "-":rset.getString(4) );
				resJsonArrayPlayer1.put(tempJson);
			}
			else{
				tempJson.put("playerid", (rset.getString(1)==null)? "-":rset.getString(1) );
				tempJson.put("playername", (rset.getString(2)==null)? "-":rset.getString(2) );
				tempJson.put("highest", (rset.getString(3)==null)? "-":rset.getString(3) );
				tempJson.put("fours", (rset.getString(4)==null)? "-":rset.getString(4) );
				resJsonArrayPlayer2.put(tempJson);
			}
//		  	resJsonArray.put(tempJson);
		}
		
		rset = stmt.executeQuery ("select mp.player_id,mp.matches_played, sea.seasons,tr.total_runs,balls_bowled,wickets_taken,batting_hand,bowling_skill from  ((( ( (( ((select player_id,count(player_id) as matches_played  from player_match natural join match where player_id = "+player1+" group by player_id) union  (select player_id,count(player_id) as matches_played  from player_match natural join match where player_id = "+player2+" group by player_id)) mp full outer join   (select player_id,count(season_year) as seasons from ((select season_year,count(season_year) as matches_played,pm.player_id   from player_match pm natural join match m  natural join season s where player_id = "+player1+" group by season_year,pm.player_id) union  (select season_year,count(season_year) as matches_played,pm1.player_id  from player_match pm1 natural join match m1 natural join season s1 where player_id = "+player2+" group by season_year,pm1.player_id) )group by player_id) sea on mp.player_id = sea.player_id) full OUTER JOIN  (select striker as player_id,sum(batsman_scored.RUNS_SCORED) as total_runs from BALL_BY_BALL natural join batsman_scored where striker = "+player1+"  group by BALL_BY_BALL.STRIKER union  select striker as player_id,sum(batsman_scored.RUNS_SCORED) as total_runs from BALL_BY_BALL natural join batsman_scored where striker = "+player2+"  group by BALL_BY_BALL.STRIKER) tr on mp.player_id = tr.player_id) full outer join (select bowler as player_id,count(*) as balls_bowled from ball_by_ball where bowler = "+player1+" group by bowler union  select bowler as player_id,count(*) as balls_bowled from ball_by_ball where bowler = "+player2+" group by bowler) b on mp.player_id = b.player_id) full OUTER JOIN  (select bowler as player_id,count(*) as wickets_taken from ball_by_ball natural join wicket_taken where bowler = "+player1+" group by bowler union  select bowler as player_id,count(*) as wickets_taken from ball_by_ball natural join wicket_taken where bowler = "+player2+" group by bowler) wt on mp.player_id = wt.player_id) full outer join (select p.player_id,bs.BATTING_HAND from player p, batting_style bs where p.BATTING_HAND = bs.BATTING_ID and player_id = "+player1+" union  select p.player_id,bs.BATTING_HAND from player p, batting_style bs where p.BATTING_HAND = bs.BATTING_ID and player_id = "+player2+") bts on mp.player_id = bts.player_id) full outer join (select p.player_id,bos.BOWLING_SKILL from player p, BOWLING_STYLE bos where p.BOWLING_SKILL = bos.BOWLING_ID and player_id = "+player1+" union  select p.player_id,bos.BOWLING_SKILL from player p, BOWLING_STYLE bos where p.BOWLING_SKILL = bos.BOWLING_ID and player_id = "+player2+") bows on mp.player_id = bows.player_id)");
		
		while (rset.next ()){
			String id = rset.getString(1);
			JSONObject tempJson = new JSONObject();
			if(player1.equals(rset.getString(1))){
				tempJson.put("playerid", (rset.getString(1)==null)? "-":rset.getString(1));
				tempJson.put("matchesplayed", (rset.getString(2)==null)? "-":rset.getString(2));
				tempJson.put("seasons", (rset.getString(3)==null)? "-":rset.getString(3));
				tempJson.put("totalruns", (rset.getString(4)==null)? "-":rset.getString(4));
				tempJson.put("ballsbowled", (rset.getString(5)==null)? "-":rset.getString(5));
				tempJson.put("wickets", (rset.getString(6)==null)? "-":rset.getString(6));
				tempJson.put("battinghand", (rset.getString(7)==null)? "-":rset.getString(7));
				tempJson.put("bowling", (rset.getString(8)==null)? "-":rset.getString(8));
				resJsonArrayPlayer1.put(tempJson);
			}
			else{
				tempJson.put("playerid", (rset.getString(1)==null)? "-":rset.getString(1));
				tempJson.put("matchesplayed", (rset.getString(2)==null)? "-":rset.getString(2));
				tempJson.put("seasons", (rset.getString(3)==null)? "-":rset.getString(3));
				tempJson.put("totalruns", (rset.getString(4)==null)? "-":rset.getString(4));
				tempJson.put("ballsbowled", (rset.getString(5)==null)? "-":rset.getString(5));
				tempJson.put("wickets", (rset.getString(6)==null)? "-":rset.getString(6));
				tempJson.put("battinghand", (rset.getString(7)==null)? "-":rset.getString(7));
				tempJson.put("bowling", (rset.getString(8)==null)? "-":rset.getString(8));
				resJsonArrayPlayer2.put(tempJson);
			}
//		  	resJsonArray.put(tempJson);
		}
		
		 rset = stmt.executeQuery ("select b.striker,season_year,count(runs_scored) as runs_in_season from (((ball_by_ball b full outer join batsman_scored bs on b.MATCH_ID = bs.MATCH_ID and b.OVER_ID = bs.OVER_ID and b.BALL_ID = bs.BALL_ID)  full outer join match  m on b.MATCH_ID = m.MATCH_ID ) full outer join season s on m.SEASON_ID = s.season_id) where striker = "+player2+" group by b.STRIKER,s.SEASON_YEAR order by s.season_year asc");
		
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
//			tempJson.put("player_id", rset.getString(1)==null ? "0":rset.getString(1));
//			tempJson.put("season_year", rset.getString(2)==null ? "0":rset.getString(2));
			tempJson.put("runs_in_season", rset.getString(3)==null ? "0":rset.getString(3));
			
			resStatJsonArrayPlayer1.put(tempJson);
		}
		
		if(resStatJsonArrayPlayer1.length()==0){
//			resStatJsonArrayPlayer1.put("null");
		}
		
		rset = stmt.executeQuery ("select b.striker,season_year,count(runs_scored) as runs_in_season from (((ball_by_ball b full outer join batsman_scored bs on b.MATCH_ID = bs.MATCH_ID and b.OVER_ID = bs.OVER_ID and b.BALL_ID = bs.BALL_ID)  full outer join match  m on b.MATCH_ID = m.MATCH_ID ) full outer join season s on m.SEASON_ID = s.season_id) where striker = "+player1+" group by b.STRIKER,s.SEASON_YEAR order by s.season_year asc");
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
//			tempJson.put("player_id", rset.getString(1)==null ? "0":rset.getString(1));
//			tempJson.put("season_year", rset.getString(2)==null ? "0":rset.getString(2));
			tempJson.put("runs_in_season", rset.getString(3)==null ? "0":rset.getString(3));
			
			resStatJsonArrayPlayer2.put(tempJson);
		}
		if(resStatJsonArrayPlayer2.length()==0){
//			resStatJsonArrayPlayer2.put("null");
		}
		
		rset = stmt.executeQuery ("select player_id, player_name from player");
		
		while (rset.next ()){
			JSONObject tempJson = new JSONObject();
			tempJson.put("player_id", rset.getString(1));
			tempJson.put("player_name", rset.getString(2));
			
			resPlayerList.put(tempJson);
		}
		
		
//		System.out.println(resJsonArray.length());

		request.setAttribute("player1json", resJsonArrayPlayer1);
		request.setAttribute("player2json", resJsonArrayPlayer2);
		
		request.setAttribute("player1Statjson", resStatJsonArrayPlayer1);
		request.setAttribute("player2Statjson", resStatJsonArrayPlayer2);
		
		request.setAttribute("resPlayerList", resPlayerList);
		
		
		return "success";
	}
	
}
