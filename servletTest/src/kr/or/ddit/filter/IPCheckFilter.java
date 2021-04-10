package kr.or.ddit.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class IPCheckFilter implements Filter {
	private Map<String, String> ipMap;   //ip정보가저장될Map 객체 변수 선언
	
    public IPCheckFilter() {
        // TODO Auto-generated constructor stub
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String ip= request.getRemoteAddr();
		System.out.println("접속 ip=>"+ ip);
		
		if(ip!=null && ipMap.containsKey(ip)) {
			System.out.println("값==>"+ipMap.get(ip));
			if("OK".equals(ipMap.get(ip))) {
				chain.doFilter(request, response);
			}else {
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out= response.getWriter();
				out.println("<h2>접근이 거부된 ip입니다</h2>");
				out.println("<h3>관리자에게 문의하세요</h3>");
				
			}
		}else { // 목록에 없는경우
			//목록에 업승면 무조건 특정한 페이지로 이동시킨다. 
			HttpServletRequest req =(HttpServletRequest) request;
			HttpServletResponse res= (HttpServletResponse) response;
			res.sendRedirect(req.getContextPath()+"/servletTest01.do");
			
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		ipMap=new HashMap<>();
		//허용되는 IP와 불허되는IP정보를구성한다
		ipMap.put("192.168.42.3","OK"); //값이 OK는 허용 , NO는 불허
		ipMap.put("192.168.42.3","OK");
		ipMap.put("0:0:0:0:0:0:0:1","OK");

	}

}
