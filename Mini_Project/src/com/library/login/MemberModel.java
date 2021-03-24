package com.library.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class MemberModel {

	
	public static void loginm(HttpServletRequest request) {
		
		String ueserid = request.getParameter("userid");
		String ueserpw = request.getParameter("userpw");
		
		HttpSession id = request.getSession();
		id.setAttribute("ui", ueserid);
		
		HttpSession pw = request.getSession();
		pw.setAttribute("up", ueserpw);
		
		}
	
	
	public static void Logout (HttpServletRequest request) {
		 HttpSession session = request.getSession();
		 //현재 서버 안에 존재 하는 SessionScope 데이터를 모조리 정지.
		session.invalidate();
	}
	
}
