<%@ page import="kr.ac.cu.vo.ShopVO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>게시판</h1>
<table>
	<tr>
		<th>no</th>
		<th>상점 번호</th>
		<th>제목</th>
		<th>사용자 아이디</th>
		
	</tr>
	<c:forEach items="${boardList}" var="board">
		<tr>
		<td>${board.boardnum}</td>
		<td><a href="boardInfo?boardnum=${board.boardnum}">
		${board.snum}</a></td>
		<td>${board.btitle}</td>
		<td>${board.pid}</td>
		</tr>
	</c:forEach>
	
</table>
<br><br>
<button onClick="location.href='addBoardForm'">게시글 추가</button>

</body>
</html>