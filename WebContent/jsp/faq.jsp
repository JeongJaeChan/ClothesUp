<%@page import="kr.ac.cu.vo.FaqVO"%>
<%@page import="kr.ac.cu.service.FaqService"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous">
	
</script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">
	$(function() {
		$(".submenu").hide();
		$(".left").click(function() {
			$(".submenu:visible").slideUp("middle");
			$(this).next('.submenu:hidden').slideDown("middle");
			return false;
		})
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {

		$("li.question").click(function() {

			$(this).next().toggle("fast");

		});
	});
</script>
<style type="text/css">
.answer {
	display: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body id="faqlist">
	<div>
		<div id="test">
		
		<h1>faq</h1><br>

			<ul style="padding:0 0;">
			<c:forEach items="${faqList}" var="faq">

				<div class="accordion">
					<li class="question">${faq.title } <a href="fupdateform?title=${faq.title}&fnum=${faq.fnum }&content=${faq.content }&fcategory=${faq.fcategory }">수정</a> <a href="deletefaq?fnum=${faq.fnum}">삭제</a>
					</li>
					
					<li class="answer">>${faq.content }</li>
				</div>
				</c:forEach>

			</ul>

		</div>
	</div>
</body>
	
</html>