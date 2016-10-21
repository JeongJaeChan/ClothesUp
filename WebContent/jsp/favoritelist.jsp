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

<meta charset="utf-8">
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
			Favorite<small>Clothes Up</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="index.jsp">Home</a></li>
			<li class="active">Favorite</li>
		</ol>
	</div>
	
	
	<c:forEach items="${favoriteList}" var="favorite">
		<div class="row">
			<div class="col-md-7">
				<a href="shopInfo?snum=${favorite.shop_num}"> 
				
				<img src="resources/img/m1.jpg" width="500" height="300">
				</a>
			</div>
			<div class="col-md-5">
				<h3>
				<%-- 	<h4>번호 : ${favorite.favoritenum}<br></h4> --%>
					<h4>상점</h4>
					 <font size="5" color="green">${favorite.sname}</font> 
					<%-- <h4>${favorite.sname}</h4> --%>
					<%-- <h4>매장번호 : ${favorite.shop_num}<br></h4> --%>
				<%-- 	<h4>${favorite.section}-${favorite.sectionnum}</h4>  --%>
				<br> <br> <br> 
				<a class="btn btn-info" href="shopInfo?snum=${favorite.shop_num}">View Shop</a> 
				<a class="btn btn-warning" href="favoriteDelete?favoritenum=
				${favorite.favoritenum}&fid=<%=session.getAttribute("loginEmail") %>">삭제</a>
			</div>
		</div>
		<hr>
	</c:forEach>
</body>
</html>