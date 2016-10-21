<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://localhost:8088/ClothesUp/resources/js/jquery.raty.js"></script>

<script language="javascript"> 

function closeAddBoardForm() {
	window.close(); 
}


$(function() {
	$('div#star').raty({
		score: 1
		,path : "http://localhost:8088/ClothesUp/resources/img"
		,width : 300
		,click: function(score, evt) {
			$("#score").val(score);
		}
	});
});
</script> 

</head>

<body>
<div align="center">
<h1>Board 추가</h1>
<hr>
</div>

<form action="addBoard?snum=${shopnum}" name="form" method="post">
<input type="hidden" name="pid" value=<%=session.getAttribute("loginEmail") %>>
<h3>제목 : <input type="text" name="btitle" /></h3>
<h3>내용 : <br>
<TextArea name="bcontent" rows=10 cols=50 ></TextArea></h3>

<label for="score">점수 : </label> <div id="star"></div>


<div align="center">
<input type="submit" class="btn btn-success" value="추가"/>&nbsp;&nbsp;&nbsp;
<input type="button" class="btn btn-success" value="닫기" onClick="closeAddBoardForm()"/>
</div>
</form>
</body>
</html>