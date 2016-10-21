<!DOCTYPE jsp>
<jsp lang="en"> <%@ page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kr.ac.cu.vo.ShopVO"%> <%@ taglib
   uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">

<script language="javascript"> 

function closeUpdateShopForm() {
	window.close(); 
}
</script> 

</head>
<body>
<div align="center">
<h1>수정</h1>
<hr>
</div>

<form action="updateShop?snum=${shopInfo.snum}" method="post">
  <font size="5" color="green">${shopInfo.sname}</font> <br>

<h4>image : <input type="file" name="simage"  value=${shopInfo.simage } ></h4>

<h4>소개글 :</h4> 
<h3>
<TextArea name="intro" rows=10 cols=50 value=${shopInfo.intro } > </TextArea> 
</h3>
<div align="center">
<!-- <input type="submit" value="수정" /> -->   
<input type="submit"  class="btn btn-success"  value="수정"/>&nbsp;&nbsp;&nbsp;
<input type="button" class="btn btn-warning" value="닫기" onClick="closeUpdateShopForm()"/>
</div>
</form>


</body>
</html>