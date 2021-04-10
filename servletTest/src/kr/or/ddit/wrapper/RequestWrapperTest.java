package kr.or.ddit.wrapper;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/*
  -Wrapper ==> 요청 (request) 객체나 응답(Response)객체를 포장하는 것
  		   ==> 요청객체나 응답객체의 메서드들을 재정의할때 사용된다.
  - 요청객체 포장 ==> HttpServletRequestWrapper클래스를 상속받아서 작성한다
  - 요청객체 포장 ==> HttpServletResponsWrapper클래스를 상속받아서 작성한다
  
  - Wrapper클래스를 작성한 후 작성된 Wrapper클래스를 사용하면 Filter를 이용해서 
  	Wrapper클래스를 등록
 */
public class RequestWrapperTest extends HttpServletRequestWrapper {
	//반드시 생성자가 있어야한다
	public RequestWrapperTest(HttpServletRequest request) {
		//생성자에서는 HttpServletRequest객체를 매개변수로 받아서 조상클래서의
		// 생성자를 호출할 때 넘겨 주어야 한다.
		
		super(request);
		
	}
	//HttpServletRequest객체의 메서드 중에서 작업에 필요한 메서드를 재정의 한다. 
	//예)사용자의 IP주소를 문자열로 반환하는  getRemotoAddr() 메서드 재정의하기
	@Override
	public String getRemoteAddr() {
		String ip= super.getRemoteAddr(); //원래의 명령을 실행한다.
		
		if("127.0.0.1".equals(ip)||"0:0:0:0:0:0:0:1".equals(ip)) {
			return "반가워용";
		}
		return ip;         //이 메서드를 사용하려면 필터를 이용해서 사용한다  필터를 만들자!
	}

	//예)getParameter()메서드 재정의
	//회원 Id는 admin은 사용불가 ==> 사용자가 admin을 입력하면 '사용불가'를 반환시킨다. 
	//회원이름  없거나 null이면 '아무개'로 반환 
	//패스워드는 모두 대문자로 변환해서 반환
	
	//request.getParameter("mem_id");
	@Override
	public String getParameter(String name) {
		//매개변수 'name'에서는 request객체에서 보내온 데이터의 '파라미터변수명'이 들어온다.
		String value= super.getParameter(name); 	//원래값 가져오기
		if("mem_id".equals(name)) { //회원 Id에 대한 처리
			if("admin".equals(value)) {
				return "사용불가";
			}
			
		}else if("mem_name".equals(name)) {
			if(value==null||"".equals(value.trim())) {
				return "아무개";
			}
		}else if("mem_pass".equals(name)) {
			if(value!=null) {
				
				return value.toUpperCase();
			}	
	}
		return value;
	}
}

