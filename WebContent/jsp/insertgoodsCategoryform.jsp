<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>카테고리등록</h1>
	<form action="insertgoodsCategory" method="post">
	카테고리번호 : <input type="text" name="gcnum"><br>
	카테고리명 : <input type="text" name="gccategory"/><br>
	<input type="submit" value="카테고리등록"/>
	<input type="reset" value="취소"/>
	</form>
</body>
</html>