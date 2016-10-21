<%@ page import="kr.ac.cu.vo.ShopVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 정보</h1>
	<%
	request.setCharacterEncoding("utf-8");
	
	%>
	
	<table>
	<tr>
	<td> 사용자 아이디 : ${boardInfo.pid}</td>
	</tr>
	<tr>
	<td> 상점 번호 : ${boardInfo.snum}</td>
	</tr>
	<tr>
	<td> 제목 : ${boardInfo.btitle}</td>
	</tr>
	<tr>
	<td> 내용 : ${boardInfo.bcontent}</td>
	</tr>
	<tr>
	<td> 점수 : ${boardInfo.score}</td>
	</tr>
	</table>
	
	
	<a href="updateBoardForm?boardnum=${boardInfo.boardnum}">수정</a>
	<a href="deleteBoard?boardnum=${boardInfo.boardnum}">삭제</a>

	
	

</body>
</html>
