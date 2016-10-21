<%@page import="java.io.IOException"%>
<%@page import="kr.ac.cu.vo.PersonVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>

	<article class="container">
	<div class="page-header">
		<h1>
			회원 목록<small>Clothes Up</small>
		</h1>
	</div>
	<div class="col-md-6  col-md-offset-1">
		<table width="800">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>비밀번호</th>
				<th>종류</th>
				<th>번호</th>
				<th>위도</th>
				<th>경도</th>
				<th>수정</th>
				<th>탈퇴</th>
			</tr>
			<c:forEach items="${personList}" var="person">
				<tr>
					<td>${person.pid}</td>
					<td>${person.pname}</td>
					<td>${person.ppassword}</td>
					<td>${person.ptype}</td>
					<td>${person.shopnum}</td>
					<td>${person.latitude}</td>
					<td>${person.longitude}</td>
					<td><a href="perUpdateForm?pid=${person.pid}">수정</a></td>
					<td><a href="perDelete?pid=${person.pid}">탈퇴</a></td>
				</tr>
			</c:forEach>

		</table>

		<%
			System.out.println(session.getAttribute("loginEmail"));
			if (session.getAttribute("loginEmail") == null) {
		%>
		login<%
			} else {
		%>
		<%=(String) session.getAttribute("loginEmail")%>
		<%
			}
		%>
		<button onclick="location.href='logout'">logout</button>
	</div>
	</article>
</body>
</html>