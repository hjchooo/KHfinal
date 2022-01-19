package kh.com.finalProject.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor{
	// Interceptor : 컨트롤러로 요청 값이 전달 되기 전/후 중간에서 값을 가로채 
	// 필요한 작업을 해줄 수 있는 객체/인터페이스
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		// true : 원래 클라이언트가 요청한 uri를 이용해 컨트롤러로 찾아갈 수 있게 허용
		// false : 컨트롤러로 요청 값이 넘어가지 못하게 함.
		// 로그인 세션 검사해서 null값이면 웰컴, 정보수정, 등등 페이지 접근 X
		System.out.println("인터셉터 preHandle 실행됨");
		
		if(request.getSession().getAttribute("loginSession") == null) {
			System.out.println("홈으로 이동");
			// 로그인한 아이디가 없다면(session이 null 이라면) 
			// home 을 요청하도록 redirect
			response.sendRedirect("/"); 
			return false;
		}		
		return true;
	}	
}
