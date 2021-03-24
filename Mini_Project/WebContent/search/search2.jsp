<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery.js"></script>
<meta charset="UTF-8">
<script type="text/javascript">
$(function () {
	$('.backHome').on('click', function(){
	alert('대여페이지로 이동하겠습니다.');
	location.href = "RentCon";
	});
	
	$('#goApply').on('click', function () {
		alert('신청페이지로 이동하겠습니다.');
		location.href = "ApplyCon";
	});
	
	$('#backLogin').on('click', function () {
		location.href = "HomeCon";
	});
	
});
</script>
<title></title>
</head>
<body>
	<table border="1" class = "searchH">
		<tr>
			<td><h1 class = "h1H">도서조회결과</h1></td>
		</tr>
		<tr>
			<td class = "bodyTdH">검색어 : ${title}</td>
		</tr>
		<c:if test="${books.title != null}">
		<tr>
			<td class = "bodyTdH">${books.title}</td>
		</tr>
		</c:if>
		<c:if test="${books.authors != null}">
		<tr>
			<td class = "bodyTdH"><img src = "${books.authors}"></td>
		</tr>
		</c:if>
		
		<c:if test="${books.publisher != null}">
		<tr>
			<td class = "bodyTdH">${books.publisher}</td>
		</tr>
		</c:if>
		<c:if test="${books.isbn != null}">
		<tr>
			<td class = "bodyTdH">${books.isbn}</td>
		</tr>
		</c:if>
		
		<c:if test="${books.thumbnail != null}">
		<tr>
			<td class = "bodyTdH">${books.thumbnail}</td>
		</tr>
		</c:if>
		
		<c:if test="${books.title == null}">
		<tr>
			<td class = "bodyTdH">해당 도서가 존재하지 않습니다.</td>
		</tr>
		</c:if>
<c:if test="${sessionScope.id != null}">
	<c:if test="${books.title != null}">
	<tr>
		<td>
			<button class = "backHome" class = "sbH">대여하기</button>
		</td>
	</tr>
	</c:if>
	
	<c:if test="${books.title == null}">
		<tr>
			<td><button id = "goApply" class = "sbH">신청하기</button></td>
		</tr>
	</c:if>
</c:if>

	<c:if test="${sessionScope.id == null}">
		<tr>
			<td><button class = "sbH" id = "backLogin">로그인 후 이용</button></td>
		</tr>
	</c:if>
	</table>
	
</body>
</html>