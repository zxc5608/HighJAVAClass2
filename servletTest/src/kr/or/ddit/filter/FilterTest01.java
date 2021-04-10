package kr.or.ddit.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/*
 	-서블릿 필터 
 1. 사용목적:
 	 - 클라이언트의 요청을 수행하기 전에 이 요청을 가로채서 필요한 작업을 수행 할 수있다.
 	 - 클라이언트에 대한 응답 정보를 제공하기 전에 응답정보에 필요한 작업을 수행할 수 있다. 
 2. 사용 예  
 	 - 인증작업용 필터 
 	 - 데이터 압축용 필터 
 	 - 인코딩용 필터 
 	 - 로깅 작업용 필터 
 	 - 이미지 변환 작업용 필터 등등...
 	 
 */

/*
  필터 class는 'javax.servlet.Fileter'인터페이스를 구현해서 작성해야한다.
  작성된 필터는 web.xml에 등록해서 작동시키거나 
  @WebFilter 애노테이션을 이용해서 작동 시키면 된다.
   (형식 : @WebFilter("url매핑정보"))
   (예 : @WebFilter("/*")) ==> 모든요청에 대하여 처리하라
 */
public class FilterTest01 implements Filter {

	
	//init= 필터 초기화 부분
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("첫번째 Filter - init()메서드 실행 ...");
	}
	
	//실제 처리되는부분
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//chain.doFilter()메서드 앞쪽은 요청에 관련된 처리를 구현한다. 
		System.out.println("첫번째 Filter-doFilter()메서드 호출 전...");
		
		chain.doFilter(request, response); // 다른필터를 부르는 부분
		
		//chain.doFilter()메서드 뒤쪽은 응답에 관련된 처리를 구현한다.
		System.out.println("첫번째 Filter-doFilter()메서드 호출 후...");
	}

	//필터 종료시 처리할 부분
	public void destroy() {
		System.out.println("첫번째 Filter - destroy()메서드 실행");
	}

}
