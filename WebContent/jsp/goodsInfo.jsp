<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=charset=UTF-8">
<title>Insert title here</title>

<script language="javascript"> 

function openaddGoodsInfoForm() {
	window.open("addGoodsInfoForm?gnum=<%=session.getAttribute("gnum")%>&snum=<%=session.getAttribute("snum")%>",
				'AddGoodsInfoForm',
				'width=500, height=550, menubar="no", toolbar="no"');
		window.close();
	}
</script>

</head>
<body>
	<%@include file="header.jsp"%>
	<div align="center">
		<h1>상품 정보</h1>
		
		<c:choose>
		<c:when test="${shop.pid == sessionScope.loginEmail}">
			<div align="right">
			<input type="button" class="btn btn-primary"
				onClick="openaddGoodsInfoForm()" value="상품 정보 등록">
		</div>
		</c:when>
		</c:choose>
		<hr>
	</div>
	
	
	<div class="row">
		<div class="col-md-5">
			<img src="resources/img/m1.jpg" width="343" height="286">
		</div>
		<div class="col-md-4">
			<h3>일련번호 : ${goodsInfo.ginum }</h3>
			<h3>상품 번호 : ${goodsInfo.gnum }</h3>
			<h3>상품 이름 : ${goodsInfo.gname }</h3>
			<h3>상품 가격 : ${goodsInfo.gprice }</h3>
			<h3>상품 크기 : ${goodsInfo.gsize }</h3>
			<h3>상품 재고 : ${goodsInfo.quantity }</h3>
		</div>
	</div>


</body>
</html>