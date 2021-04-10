package kr.or.ddit.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;



public class CustomEncodingFilter implements Filter {
	private String encoding;	//인코딩 정보가 저장될 변수선언

    public CustomEncodingFilter() {
        // TODO Auto-generated constructor stub
    }


	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//request(요청) 인코딩 설정하기 
		request.setCharacterEncoding(encoding);
		
		chain.doFilter(request, response);
		
		//respons(응답) 인코딩 설정하기
		response.setCharacterEncoding(encoding);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		//초기화 파라미터에 등록된 인코딩 방식을 읽어오기
		if(fConfig.getInitParameter("encoding")==null) {
			encoding="utf-8";
		}else {
			encoding=fConfig.getInitParameter("encoding");
			
		}
	}

}
