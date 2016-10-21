<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function closeAddBoardForm() {
   window.close();
}
</script>


</head>
<body>
<%@include file="header.jsp" %>
   <form action="insertgoods?snum=<%=request.getParameter("snum") %>" method="post">
      <h3>상품 이름 : <input type="text" name="gname"></h3>
      <h3>카테고리 : 
        <select name = "gcnum">
          <option value="1">의류
            <option value="2">악세사리
            <option value="3">내의
            <option value="4">휴대폰 악세사리
            <option value="5">신발
            <option value="6">가방
            <option value="7">잡화
            <option value="8">편의점
            <option value="9">화장품
            <option value="10">이동통신
            <option value="11">식품
            <option value="12">약국
        </select>
     </h3>
      <input type="submit" value="추가">&nbsp;&nbsp;&nbsp;
      <input type="reset" value="닫기" onClick="closeAddBoardForm()">
   </form>
</body>

</html>