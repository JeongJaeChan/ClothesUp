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
<h1>업체 등록</h1>
	</div>
	<h3>${err}</h3>
	<form action="addShop" method="post" enctype="multipart/form-data">
		<h3>
			<input type="hidden" name="pid" value=<%=session.getAttribute("loginEmail")%>>
		</h3>
		<h3>
			상점 이름 : <input type="text" name="sname" />
		</h3>
		<h3>
			전화번호 : <input type="text" name="phone" />
		</h3>
		<h3>이미지 업로드 : 
			  	<input type="file" id="ufile" name="ufile"/></h3>
				
		<h3>
			카테고리 : <select name="scategory">
				<option value="1">의류
				<option value="2">악세사리
				<option value="3">내의
				<option value="4">휴대폰 악세사리
				<option value="5">신발
				<option value="6">가방
				<option value="7">잡화
				<option value="8">편의점
				<option value="9">화장품
				<option value="10">이동총신
				<option value="11">식품
				<option value="12">약국
			</select>
		</h3>
		<h3>구역 : 
  <select name = "section">
  <option value="A">A
  <option value="B">B
  <option value="C">C
  <option value="D">D
  <option value="E">E
  <option value="F">F
  <option value="남">남
  <option value="북">북
  </select>
구역번호 : <input type="text" name="sectionnum" /></h3>
		<h3>
			소개글 : <br>
			<TextArea name="intro" rows=10 cols=50> </TextArea>
		</h3>

		<input type="submit" value="등록" />&nbsp;&nbsp;&nbsp; <input
			type="button" value="닫기" onclick="closeAddShopForm()" />
	</form>
</body>


<script language="javascript">
	function closeAddShopForm() {
		window.close();
	}

	function test() {
		document.form.file.select();
		alert(document.selection.createRange().text);
	}
</script>
</html>