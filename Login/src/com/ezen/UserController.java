package com.ezen;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class UserController extends MultiActionController{
	//ModelAndView :기본적으로 제공됨
	//MultiActionController : 여러 핸들링을 이용하기 위함
	public ModelAndView loginInfo(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav=new ModelAndView();
		request.setCharacterEncoding("UTF-8");
		
		String userID=request.getParameter("userID");
		String passwd=request.getParameter("passwd");
		
		//값을 담아줌
		mav.addObject("userID", userID);
		mav.addObject("passwd", passwd);
		//뷰라는 곳으로 넘겨줌 >> 즉 jsp로 넘기기(확장자는 뺴고)
		mav.setViewName("loginInfo");
		
		return mav;
	}
}
