<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 
</head>
<body>
<div align="center">

<h3>${success}</h3>
<form>
&nbsp;&nbsp;&nbsp;
<input type="button" class="btn btn-success" value="닫기" onclick="closeForm()"/>
</form>
</div>
</body>


<script language="javascript"> 

function closeForm() {
	window.close(); 
}

</script> 
</html>