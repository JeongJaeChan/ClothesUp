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

	<h1>상품 정보 수정</h1>
	<form action="updategoodsCategory" method="post">
	카테고리번호 : <input type="text" name=gcnum value=<%=Integer.parseInt(request.getParameter("gcnum"))%> ><br>
	카테고리명 : <input type="text" name=gccategory  ><br>
 	<input type="submit" value="정보수정">
	<input type="reset" value="취소"/>
	</form>
</body>
</html>