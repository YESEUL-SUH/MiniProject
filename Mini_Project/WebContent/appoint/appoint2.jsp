<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<title></title>
<script type="text/javascript">
$(function () {
	$('#btn').on('click', function(){
		
	alert('예약 되었습니다.');
	
	location.href = "indexHome.jsp";
	
	});
	
});
</script>
</head>
<body>
<c:forEach var = "b" items = "${rented}">
<c:if test="${b.title != null}">
<form action="AppoinCon" method="POST">

<table class = "bodyTable" border="1">
<tr>
	<td class = "bodyTd">${b.title}</td>
</tr>
<tr>
	<td class = "bodyTd"><img src = "${b.authors}"></td>
</tr>
<tr>
	<td class = "bodyTd">${b.publisher}</td>
</tr>
<tr>
	<td class = "bodyTd">${b.isbn}</td>
</tr>
<tr>
	<td class = "bodyTd">${b.thumbnail}</td>
</tr>
<tr>
	<td class = "bodyTd"><button class = "btn" id = "btn">예약</button></td>
	
</tr>
</table>
<%-- <input type = "hidden" value="${b.title}" name = "title"> --%>
</form>
</c:if>
</c:forEach>



<c:forEach var = "b" items = "${rented}">
<c:if test="${b.title == null}">
<form action="AppoinCon" method = "get">
<table class = "bodyTable" border="1">
<tr>
	<td><h1 class = "h1Head">해당 도서가 없습니다.</h1></td>
</tr>
<tr>
	<td><button id = b class = "btn">되돌아 가기</button></td>
</tr>
</table>
	</form>
</c:if>
</c:forEach>

</body>
</html>