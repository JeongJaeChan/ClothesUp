<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>faq 수정</h1>
	<form action="fupdate?fnum=<%=request.getParameter("fnum")%>" method="post" >
	카테고리 : <input type="text" name="fcategory" value=<%=request.getParameter("fcategory")%>><br>
	제목 : <input type="text" name="title" value=<%=request.getParameter("title")%>><br>
	내용 : <input type="text" name="content" value=<%=request.getParameter("content")%>><br>
 	<input type="submit" value="faq수정">
	<input type="reset" value="취소"/>
	</form>
</body>
</html>