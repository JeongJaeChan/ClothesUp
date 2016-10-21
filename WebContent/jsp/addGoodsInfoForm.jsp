<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function closeAddBoardForm() {
		window.close();
	}
</script>

</head>
<body>
<%@include file="header.jsp" %>
<div align="center">
	<h1>상품 정보 추가</h1>
	<hr>
</div>
	<form action="insertgoodsInfo?gnum=<%=session.getAttribute("gnum") %>" method="post">
		<h3>
			<input type="hidden" name="ginum" value=${goods.ginum}>
		</h3>
		<h3>
			상품 이름 : <input type="text" name="gname" value=${goods.gname}>
		</h3>
		<h3>
			상품 가격 : <input type="text" name="gprice">
		</h3>
		<h3>
			상품 크기 : <input type="text" name="gsize">
		</h3>
		<h3>
			상품 재고 : <input type="text" name="quantity">
		</h3>
		<h3>
			<input type="file" name="gimage">
		</h3>
		<hr>
		<input type="submit" value="추가" >&nbsp;&nbsp;&nbsp; 
		<input type="reset" value="닫기" onClick="closeAddBoardForm()">
	</form>
</body>
</html>