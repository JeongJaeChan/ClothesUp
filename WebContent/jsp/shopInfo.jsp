<!DOCTYPE jsp>
<jsp lang="en"> <%@ page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
   src="http://localhost:8088/ClothesUp/resources/js/jquery.raty.js"></script>
<script language="javascript"> 

function openUpdateBoardForm(boardnum) {
 window.open("updateBoardForm?boardnum="+boardnum, 'AddBoard', 'width=500, height=550, menubar="no", toolbar="no"');
}

function openAddBoardForm(snum) {
    window.open("addBoardForm?snum="+snum, 'AddBoardForm', 'width=500, height=550, menubar="no", toolbar="no"');
   }
   
function openAddGoodsForm(snum) {
    window.open("addGoodsForm?snum="+snum, 'AddGoodsForm', 'width=500, height=300');
   }
   
function openGoodsInfoForm (gnum,snum) {
    window.open("goodsInfo?gnum="+gnum+"&"+"snum="+snum, 'goods', 'width=1000, height=550, menubar="no", toolbar="no"');
   }
   
   

</script>
<script>
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

   <!-- Navigation -->
   <%@include file="header.jsp"%>

   <!-- Page Content -->
   <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <div class="row">
         <div class="col-lg-12">

            <h1 class="page-header">${shopInfo.sname}
               <small>${shopInfo.gccategory}</small>
        
            </h1>
            <ol class="breadcrumb">
               <li><a href="index.jsp">Home</a></li>
               <li class="active">Shop Info</li>
            </ol>
         </div>
      </div>
      <!-- /.row -->






      <!-- Portfolio Item Row -->
      <div class="row">

         <div class="col-md-8">
            <div id="carousel-example-generic" class="carousel slide"
               data-ride="carousel">
               <!-- Indicators -->


               <!-- Wrapper for slides -->
               <div class="carousel-inner">
                  <div class="item active">
                     <p>
                        <img src=${shopInfo.simage } width="700" height="500"
                           align="top">
                  </div>

               </div>
            </div>
         </div>

         <div class="col-md-4">
            <font size="5" color="green">${shopInfo.sname}</font> <br>
            <h3>${shopInfo.gccategory}</h3>
                   <h3>${shopInfo.section}-${shopInfo.sectionnum}</h3>
            <br>
            <%-- <h4>전화번호 : ${shopInfo.phone}</h4> --%>
            <c:forEach begin="1" end="5" varStatus="loop">
               <c:choose>
                  <c:when test="${loop.index <= shopInfo.score}">
                     <img src="resources/img/star_on.png">
                  </c:when>
                  <c:when test="${(loop.index-1) < shopInfo.score}">
                     <img src="resources/img/star_half.png">
                  </c:when>
                  <c:otherwise>
                     <img src="resources/img/star_off.png">
                  </c:otherwise>
               </c:choose>
            </c:forEach>
            <br>
            <h4>${shopInfo.intro}</h4>
            <a class="btn btn-info"
               href="favoriteJoin?fid=<%=session.getAttribute("loginEmail") %>&shop_num=${shopInfo.snum}">
               좋아요! <i class="fa fa-thumbs-up"></i>
            </a>
            </p>
         </div>

      </div>
      <!-- /.row -->









      <!-- Related Projects Row -->
      <div class="row">

         <div class="col-lg-12">
            <h3 class="page-header">상품 목록</h3>
         </div>

         <hr>
         <c:forEach items="${goodsList}" var="goods">
            <div class="col-sm-3 col-xs-6">
               <a type="button" class="btn btn-default"
                  onClick="openGoodsInfoForm(${goods.gnum},${shopInfo.snum})">
                  <h4>상품 이름 : ${goods.gname}</h4>
                  <h4>상품 번호 : ${goods.gnum}</h4> <img
                  class="img-responsive img-hover img-related"
                  src="resources/img/m1.jpg" alt="">
               </a>
            </div>
         </c:forEach>
      </div>
      <!-- /.row -->




      <br> <br>




      <div class="row">
         <div class="col-lg-12">

            <h2 class="page-header"></h2>
         </div>
         <form action="addBoard?snum=${shopInfo.snum}" name="form"
            method="post">
            <input type="hidden" name="pid"
               value=<%=session.getAttribute("loginEmail")%>>
            <div align="left">
               <hr>
               <div class="well">


                  <label>상점평</label> <label for="score"></label>
                  <div align="left" id="star"></div>
                  <br>
                  <h3>
                     title <input type="text" name="btitle" />
                  </h3>
                  <h3>
                     content <br>

                     <textarea class="form-control" name="bcontent" rows="3"></textarea>
                     <br>

                     <%
                        if (session.getAttribute("loginEmail") == null) {
                     %>
                     <a onclick="myFunction()" class="btn btn-success" data-target="#myModal"
                        data-toggle="modal">댓글작성</a>

                     <%
                        } else {
                     %>
                     <input type="submit" class="btn btn-success" value="댓글작성" />
                     <%
                        }
                     %>
                  
               </div>
         </form>

      </div>
      <hr>


   </div>

   <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document"
         style="width: 400px; padding-top: 70px;">
         <div class="modal-content">
            <div class="modal-header m-header">
               <div class="modal-header-logo" style="text-align: center;">
                  <h3>로그인</h3>
                  <hr
                     style="margin-top: 10px; margin-bottom: 45px;; width: 120px; border: 1.5px solid gray;" />
               </div>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">×</span> <span class="sr-only">Close</span>
               </button>
               <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="login-sel">
               <a class="loginMember">업체 회원 로그인</a>
            </div>
            <form id="loginForm1" action='joinCheck' method='post'>
               <div class="modal-body">
                  <input id="pid" name="pid" type="text" placeholder="아이디" /> <input
                     type="button" value="회원가입" onclick="location.href='perJoinForm'">
                  </button>
                  <br /> <input id="ppassword" name="ppassword" type="password"
                     placeholder="비밀번호" /> <input type="submit" value="로그인" /> <input
                     type="reset" value="취소" />
               </div>

               <div id="naver_id_login"></div>

               <fb:login-button class="facebook" size="xlarge"
                  scope="public_profile,email" onlogin="checkLoginState();"
                  size="large">
               </fb:login-button>
               <div id="status" style="display: none;"></div>

            </form>

            <form id="floginForm" action="loginCheck" method="post"
               style="display: none;">
               <%
                  System.out.println("f logincheck 실행" + session.getAttribute("loginEmail"));
               %>
               <input id="fid" name="pid" value="" /> <input id="fname"
                  name="pname" value="" /> <input id="fpassword" name="ppassword"
                  value="facebook" /> <input id="ftype" name="ptype" value="1" />
            </form>

            <form id="loginForm" action="loginCheck" method="post"
               style="display: none;">
               <%
                  System.out.println("logincheck 실행" + session.getAttribute("loginEmail"));
               %>
               <input id="nid" name="pid" value="" /> <input id="nname"
                  name="pname" value="" /> <input id="npassword" name="ppassword"
                  value="naver" /> <input id="ntype" name="ptype" value="1" />
            </form>
            <form id="logout1" action="logout" method="post"
               style="display: none;"></form>

         </div>
      </div>
   </div>

   <%
      if (session.getAttribute("SessionMsg") != null) {
   %>
   <input type="hidden" id="hidMsg"
      value="<%=session.getAttribute("SessionMsg").toString()%>" />
   <script type="text/javascript">
      alert($("#hidMsg").val());
   </script>
   <%
      session.setAttribute("SessionMsg", null);
      }
   %>



   <!--    Favortie -->
   <%
      if (session.getAttribute("SessionFMsg") != null) {
   %>
   <input type="hidden" id="hidFMsg"
      value="<%=session.getAttribute("SessionFMsg").toString()%>" />
   <script type="text/javascript">
      alert($("#hidFMsg").val());
   </script>
   <%
      session.setAttribute("SessionFMsg", null);
      }
   %>



   <!-- /.container -->

   <!-- jQuery -->
   <script src="resources/js/jquery.js"></script>

   <!-- Bootstrap Core JavaScript -->
   <script src="resources/js/bootstrap.min.js"></script>

   <!-- Script to Activate the Carousel -->
   <script>
    $('.carousel').carousel({
        interval: 2000 //changes the speed
    })
    </script>


   <script type="text/javascript">
   var naver_id_login = new naver_id_login("yqzzax9I8h6vungLtVY3", "http://127.0.0.1:8088/ClothesUp/main1");
   var state = naver_id_login.getUniqState();

   naver_id_login.setButton("white", 2,40);
   naver_id_login.setDomain(".service.com");
   naver_id_login.setState(state);
//    naver_id_login.setPopup();
   naver_id_login.init_naver_id_login();
   
</script>


   
<div class="container">
   <c:forEach items="${boardList}" var="board">

      <div class="col-board-5">
         <div>
            <div>
               <font size="3" color="green">${board.btitle}</font>
            </div>
            <div align="right">아이디 : ${board.pid} &nbsp;&nbsp;&nbsp;
               ${board.reg_date}</div>
         </div>

         <div>
            ${board.bcontent} <br>
         </div>


         <div>

            <c:choose>
               <c:when test="${board.score=='0'}">
                  <font size=3, color="orange"><b>☆☆☆☆☆</b></font>
               </c:when>

               <c:when test="${board.score=='1'}">
                  <font size=3, color="orange"><b>★☆☆☆☆</b></font>
               </c:when>

               <c:when test="${board.score=='2'}">
                  <font size=3, color="orange"><b>★★☆☆☆</b></font>
               </c:when>

               <c:when test="${board.score=='3'}">
                  <font size=3, color="orange"><b>★★★☆☆</b></font>
               </c:when>

               <c:when test="${board.score=='4'}">
                  <font size=3, color="orange"><b>★★★★☆</b></font>
               </c:when>

               <c:when test="${board.score=='5'}">
                  <font size=3, color="orange"><b>★★★★★</b></font>
               </c:when>

               <c:otherwise>
                  <font size=3, color="orange"><b>☆☆☆☆☆</b></font>
               </c:otherwise>

            </c:choose>
            <br>
         </div>
         <c:choose>
            <c:when
               test="${shopInfo.pid == sessionScope.loginEmail and shopInfo.pid ne null}">
               <a href="javascript:openUpdateBoardForm(${board.boardnum})">수정</a>
               <a
                  href="deleteBoard?boardnum=${board.boardnum}&snum=<%= request.getParameter("snum") %>">삭제</a>
               <br>
               <br>
            </c:when>
         </c:choose>
      </div>

      <hr>
   </c:forEach>
   </div>




















   <hr>

   <!-- Footer -->
   <footer>
      <div class="row">
         <div class="col-lg-12">
            <p>Copyright &copy; Your Website 2014</p>
         </div>
      </div>
   </footer>




   <!-- /.container -->

   <!-- jQuery -->
   <script src="resources/js/jquery.js"></script>
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script
      src="http://localhost:8088/ClothesUp/resources/js/jquery.raty.js"></script>

   <!-- Bootstrap Core JavaScript -->
   <script src="resources/js/bootstrap.min.js"></script>

</body>
   <script type="text/javascript">
   // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
   function naverSignInCallback() {
      alert("네이버로그인");
      // naver_id_login.getProfileData('프로필항목명');
      // 프로필 항목은 개발가이드를 참고하시기 바랍니다.
//       alert(naver_id_login.getProfileData('email'));
//       alert(naver_id_login.getProfileData('nickname'));
// alert(naver_id_login.getProfileData('name'));
//       alert(naver_id_login.getProfileData('age'));
         //$('#naver_id_login a').click(function(){
         
         //});
//           email   = naver_id_login.getProfileData('nickname');
//           snsName = naver_id_login.getProfileData('age');
      //$('.test').html(naver_id_login.getProfileData('email'));
      //alert();
      $('#nid').val(naver_id_login.getProfileData('email'));
      $('#nname').val(naver_id_login.getProfileData('nickname'));
//       $('#hidAGE').val(naver_id_login.getProfileData('age'));
      $('#accTok').val(naver_id_login.oauthParams.access_token);
      if($('#pid').val() != null){
         $('#naver_id_login').hide();
      }else{
         $('#naver_id_login').show();
      }
      
      $('#loginForm').submit();
   }
   naver_id_login.get_naver_userprofile("naverSignInCallback()");
   
   function click_logout() {
        $.ajax({
             type: "POST",
             dataType: 'text',
             url: "http://nid.naver.com/nidlogin.logout",
             crossDomain : true,
             xhrFields: {
                 withCredentials: true
             }
         })
             .done(function( data ) {
                
                $('#logout1').submit();
             })
             .fail( function(xhr, textStatus, errorThrown) {
                
                $('#logout1').submit();
             });
        alert("로그아웃 되었습니다");
      }
   
   
</script>



   <script>
  // This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
      
    });
  }

  window.fbAsyncInit = function() {
       FB.init({
         appId      : '300489586986143',
         xfbml      : true,
         version    : 'v2.7'
       });
     };

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });


   
//   FB.logout(function(response) {
//      //windows.location.href = "http://localhost:6969/ClothesUp/main1";// 사용자 로그 아웃 이후 콜백처리
//      $('#logout1').submit();
//   });
  
  // Load the SDK asynchronously
   (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me?fields=email,id,name', function(response) {
      console.log('Successful login for: ' + response.name);
      //alert(JSON.stringify(response));
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + response.email +"  id " + response.id+'!';
      
      $('#fid').val(response.id);
       $('#fname').val(response.name);
     
//      if($('#pid').val() != null){
//         $('#naver_id_login').hide();
//      }else{
//         $('#naver_id_login').show();
//      }
     
     $('#floginForm').submit();    
      
      
    });
  }


  function fbLogoutUser() {
     FB.getLoginStatus(function(response) {
         if (response && response.status === 'connected') {

             FB.logout(function(response) {
                 
                 $('#logout1').submit();    
             });
         } else if (response.status === 'not_authorized') 
             {
                  FB.logout(function(response) {
                 document.location.reload();
                  
                 });
             }
     });}
</script>

   <script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '300489586986143',
      xfbml      : true,
      version    : 'v2.7'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  


  
</script>
</jsp>