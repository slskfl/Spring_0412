package com.ezen;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class UserController extends MultiActionController{
	//ModelAndView :�⺻������ ������
	//MultiActionController : ���� �ڵ鸵�� �̿��ϱ� ����
	public ModelAndView loginInfo(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav=new ModelAndView();
		request.setCharacterEncoding("UTF-8");
		
		String userID=request.getParameter("userID");
		String passwd=request.getParameter("passwd");
		
		//���� �����
		mav.addObject("userID", userID);
		mav.addObject("passwd", passwd);
		//���� ������ �Ѱ��� >> �� jsp�� �ѱ��(Ȯ���ڴ� ����)
		mav.setViewName("loginInfo");
		
		return mav;
	}
}
