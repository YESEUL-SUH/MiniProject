<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 창</title>
</head>
<body>

<%
		String id = (String) session.getAttribute("id");
%>


<table class = "bodyTable">

<tr>
	<td><h1 class = "h1Head"><%=id %>님 환영합니다.</h1></td>
</tr>

</table>


</body>
</html>