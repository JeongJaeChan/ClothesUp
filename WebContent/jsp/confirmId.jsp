<%@page import="kr.ac.cu.dao.PersonDAO"%>
<%@page import="kr.ac.cu.service.Impl.PersonServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="kr.ac.cu.service.PersonService"%>
<%@ page import="kr.ac.cu.vo.PersonVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID 중복확인</title>



</head>
<body>
	<%
		String id = request.getParameter("pid");
		String check = request.getParameter("check");
		System.out.println("*****check : " + check);
		System.out.println("pid " + id);

		if ("false".equals(check)) {
	%>
	<b><font color="red"><%=id%></font>는 이미 사용중인 아이디입니다.</b>
	<form action="checkIdForm" method="post">
		<b>다른 아이디를 선택하세요.</b><br /> 
		<input type="text" id="pid" name="pid">
		<input type="submit" value="ID중복확인">
	</form>
	<%
		} else {
	%><center>
		<b>입력하신 아이디<font color="red"><%=id%></font>는<br /> 사용하실 수 있는 ID입니다.
		</b> <input type="button" value="닫기" onclick="setid()">
	</center>
	<%
		}
	%>
	
		<script>
	function setid()
	{
		self.close();
	}
	</script>

</body>
</html>
