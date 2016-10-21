<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Favorite 수정</h1>
	<form action="favoriteUpdate" method="post">
		사용자 : <input type="text" readonly name="fid" value=<%=request.getParameter("fid") %> /><br> 
		순위 : <input type="text" name="favoritenum" /><br> 
		상점 : <input type="text" name="shop_num" /><br>
		<input type="submit" value="확인" /> <input type="reset" value="취소" />
	</form>
</body>
</html>