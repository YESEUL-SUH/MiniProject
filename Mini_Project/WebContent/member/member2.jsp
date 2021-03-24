<%@page import="com.library.login.MemberModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");




if(userid != null && userid.equals(userpw)){
	// 로그인 성공 -> 아이디 세션에 저장
	String id = (String)request.getSession().getAttribute("ui");
	request.getSession().setAttribute("id", id);
	} 

request.setAttribute("contentPage", "member/member3.jsp");
request.getRequestDispatcher("../indexHome.jsp").forward(request, response);
%>


</body>
</html>