package dbms;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class Teams {

	public String teams() throws IOException{
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
		return "success";
	}
}
