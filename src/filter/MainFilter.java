package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class MainFilter
 */
@WebFilter("/*")
public class MainFilter implements Filter {

    /**
     * Default constructor. 
     */
    public MainFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		
//		System.out.println("herer");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		String uri = req.getRequestURI();
//		System.out.println(uri);
//		this.context.log("Requested Resource::"+uri);
		
		HttpSession session = req.getSession(false);
		
//		Cookie checkTheCookie = new Cookie("user", null);
		boolean isUser=false;
		Cookie[] checkTheCookie = req.getCookies();
		if(checkTheCookie!=null){
			for(Cookie cki: checkTheCookie){
				String name = cki.getName();
				
				if(name.equals("user")){
					isUser=true;
					 int age = cki.getMaxAge();
					System.out.println(age);
				}
			}
		}
		
		if(isUser && session==null &&  !(uri.endsWith("_football_login.jsp")) && !uri.endsWith("css")&& !uri.endsWith("js") && !uri.endsWith("jpg") && !uri.endsWith("png") && !uri.endsWith("svg")&& !uri.endsWith("woff")&& !uri.endsWith("woff2")&& !uri.endsWith("ttf")&& !uri.endsWith("php")){
			res.sendRedirect("_football_login.jsp");
			return;
		}
//		else if(uri.endsWith("_football"))
		else{
			
//			request.setAttribute("user", session.getAttribute("user"));
			chain.doFilter(request, response);
		}

//				chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
