<%@page import="kr.ac.cu.vo.FaqVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>faq등록</h1>
	<form action="addfaq" method="post">
	카테고리 : <input type="text" name="fcategory"/><br>
	제목 : <input type="text" name="title"/><br>
	내용 : <input type="text" name="content"/><br>
 	<input type="submit" value="FAQ등록"/>
	<input type="reset" value="취소"/>
	</form>
</body>
</html>