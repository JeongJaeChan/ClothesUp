<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <script>
    function checkIt()
    {
    	if(document.joinput.pid.value == "")
    		alert("아이디를 입력하세요");
    	else if(document.joinput.pname.value=="")
    		alert("이름을 입력하세요");
    	else if(document.joinput.ppassword.value=="")
    		alert("비밀번호를 입력하세요");
    	else if(document.joinput.latitude.value=="")
    		alert("위도를 입력하세요");
    	else if(document.joinput.longitude.value=="")
    		alert("경도를 입력하세요");
    }
    function openConfirmid(inputid)
    {
//     	boolean check = request.getAttribute("chekId");
//     	System.out.println("id : "+inputid);
//     	System.out.println("check : ");
    	
//     	if(check == false) {
//     		alert("아이디를 확인하세요");
//     		return;
//     	} 
//     	url = "checkIdFrom?pid="+inputid.pid.value;
    	
    	window.open("checkIdForm?pid="+inputid, 'CheckId', width=50, height=50);
    }
    </script>
</head>

<body>
    <!-- Navigation -->
    <%@include file="header.jsp" %>

      <article class="container">
        <div class="page-header">
          <h1>회원수정 <small>Clothes Up</small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form action="perUpdate" method="post" name="joinput" onsubmit="return checkIt()">
            <div class="form-group">
              <div class="form-group">
             	 <h3><font color="green"><%out.print(session.getAttribute("loginEmail")); %></font>님</h3>
              </div>
            </div>
            <input type="hidden" name="pid" value=<%=session.getAttribute("loginEmail") %> >
            <div class="form-group">
              <label for="username">이름</label>
              <input type="text" class="form-control" id="pname" name="pname" placeholder="이름을 입력해 주세요">
            </div>
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" id="ppassword" name="ppassword" placeholder="비밀번호">
            </div>
            <div class="form-group">
              <label for="InputPassword2">비밀번호 확인</label>
              <input type="password" class="form-control"placeholder="비밀번호 확인">
              <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
            </div>
<!--             <div class="form-group"> -->
<!--               <label for="Inputshopnum">매장 번호</label> -->
<!--               <input type="password" class="form-control" id="shopnum" placeholder="매장 번호를 입력해주세요"> -->
<!--             </div> -->
<!--             <div class="form-group"> -->
<!--               <label for="username">위도</label> -->
<!--               <div class="input-group"> -->
<!--                 <input type="text" class="form-control" id="latitude" name="latitude" placeholder="위도를 입력해주세요"> -->
<!--                 <span class="input-group-btn"> -->
<!--                   <button class="btn btn-success">위도 찾기<i class="fa fa-mail-forward spaceLeft"></i></button> -->
<!--                 </span> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="form-group"> -->
<!--               <label for="username">경도</label> -->
<!--               <div class="input-group"> -->
<!--                 <input type="text" class="form-control" id="longitude" name="longitude" placeholder="경도를 입력해주세요"> -->
<!--                 <span class="input-group-btn"> -->
<!--                   <button class="btn btn-success">경도 찾기<i class="fa fa-edit spaceLeft"></i></button> -->
<!--                 </span> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="form-group"> -->
<!--                 <label>약관 동의</label> -->
<!--               <div data-toggle="buttons"> -->
<!--               <label class="btn btn-primary active"> -->
<!--                   <span class="fa fa-check"></span> -->
<!--                   <input id="agree" type="checkbox" autocomplete="off" checked> -->
<!--               </label> -->
<!--               <a href="#">이용약관</a>에 동의합니다. -->
<!--               </div> -->
<!--             </div> -->
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">회원수정<i class="fa fa-check spaceLeft"></i></button>
              <button type="reset" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
          </form>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    

</body>

</html>
