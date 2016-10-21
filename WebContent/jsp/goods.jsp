<%@page import="kr.ac.cu.vo.GoodsVO"%>
<%@page import="kr.ac.cu.vo.FaqVO"%>
<%@page import="kr.ac.cu.service.FaqService"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous">
	
</script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">
	$(function() {
		$(".submenu").hide();
		$(".left").click(function() {
			$(".submenu:visible").slideUp("middle");
			$(this).next('.submenu:hidden').slideDown("middle");
			return false;
		})
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {

		$("li.question").click(function() {

			$(this).next().toggle("fast");

		});

	});
</script>
<style type="text/css">
.answer {
	display: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body id="goodslist">
	<div>
		<div id="test">
		
		<h1>상품 정보</h1><br>
		<table>
<tr>
<th>상품번호</th>
<th>상품명</th>
<th>상품이미지</th>
<th>상품가격</th>
<th>상품분류</th>
<th>매장번호</th>
<th>사이즈</th>
<th>수량</th>
</tr>
<% GoodsVO vo=new GoodsVO(); %>
			<ul style="padding:0 0;">
			<a href="insertgoodsform">상품 정보입력
			
<%-- 			<c:forEach items="${goodsList}" var="goods"> --%>
<!-- 			<tr> -->
<%-- 			<th>${goods.gnum}</th> --%>
<%-- 			<th>${goods.gname}</th> --%>
<%-- 			<th>${goods.gimage}</th> --%>
<%-- 			<th>${goods.gprice}</th> --%>
<%-- 			<th>${goods.gcnum}</th> --%>
<%-- 			<th>${goods.snum}</th> --%>
<%-- 			<th>${goods.gsize}</th> --%>
<%-- 			<th>${goods.quantity}</th> --%>
<%-- 			<th><a href="updategoodsform?gnum=${goods.gnum}">수정</a> --%>
<%-- 			<th><a href="deletegoods?gnum=${goods.gnum}">삭제</a> --%>
<!-- 				</tr> -->
<%-- 				</c:forEach> --%>
				</table>

			</ul>

		</div>
	</div>
</body>

</html>