package kr.or.ddit.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FilterTest02 implements Filter {

	@Override
	public void destroy() {
		System.out.println("두번째 Filter의destroy()메서드 실행...");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("두번째 필터의 doFilter()메서드 호출전 ...");
		
		chain.doFilter(request, response);
		System.out.println("두번째 Filter의 doFilter()메서드 호출 후...");
		
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		System.out.println("두번째 Filter의  init()메서드 실행");
		// init()메서드에서 필터의 초기화 정보를 읽어올수있다. ]
		//FilterConfig객체의getInitParameter()메서드를 이용한다
		
		String initParam= config.getInitParameter("tester");
		System.out.println("tester==>"+initParam);
		
	}

}
