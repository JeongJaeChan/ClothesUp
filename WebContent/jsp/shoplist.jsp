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

<!-- jsp5 Shim and Respond.js IE8 support of jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/jsp5shiv/3.7.0/jsp5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




<script language="javascript">
   function openUpdateShopForm(snum) {
      window.open("updateShopForm?snum=" + snum, 'UpdateShop',
            'width=500, height=550, menubar="no", toolbar="no"');
   }

   function openAddShopForm() {

      window.open("addShopForm", 'AddShop',
            'width=500, height=550, menubar="no", toolbar="no"');
   }

   function paging(obj) {
      var pg = obj.attr('id');
      //alert(pg);

      $(".row").hide();
      for (var i = (parseInt(pg) * 12) - 11; i <= parseInt(pg) * 12; i++) {
         // alert(i);
         var pgnum = 'pg_' + i;
         if (document.getElementById(pgnum).style.display == "") {
            document.getElementById(pgnum).style.display = "none";
         } else {
            document.getElementById(pgnum).style.display = "";
         }
      }
   }
</script>

</head>

<body>
   <%
      int pagenum = 1;
      int pagecount = 0;
   %>

   <!-- Navigation -->
   <%@include file="header.jsp"%>
   <!-- Page Content -->
   <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <div class="rowlist">
         <div class="col-lg-12">
            <h1 class="page-header">
               Shop List <small>강남역 지하상가</small>
            </h1>
            <ol class="breadcrumb">
               <li><a href="index.jsp">Home</a></li>
               <li class="active">Shop List</li>
            </ol>
         </div>
      </div>
      <!-- /.row -->

      <div align="right">
         <input type="button" onClick="openAddShopForm()"  class="btn btn-success" value="업체 등록">
      </div>
      <hr>

      <!-- Shop list -->
      <c:forEach items="${shopList}" var="shop" varStatus="status">
         <%
            pagecount++;
               if (pagecount > (12 * pagenum)) {
                  pagenum++;
               }
         %>
         <%
            if (pagecount <= 12) {
         %>
         <div class="row" id="pg_<%=pagecount%>" style="display: block">
            <%
               } else {
            %>
            <div class="row" id="pg_<%=pagecount%>" style="display: none;">
               <%
                  }
               %>
               <div class="col-md-7">
                  <a href="shopInfo?snum=${shop.snum}"> 
                  <img src="resources/upload/${shop.simage}" width="500" height="300">
                  </a>
                  <br><br>
               </div>
               <div class="col-md-5">
               
                  <font size="5" color="green">${shop.sname}</font> 
                  <br>
                  <h4>${shop.gccategory}</h4>
                  <br>
                  <h4>
                     <i class="fa fa-phone"></i> <abbr title="Phone"></abbr> :
                     ${shop.phone}
                     </h3>
                
                     <br>
                     <c:forEach begin="1" end="5" varStatus="loop">
                           <c:choose>
                              <c:when test="${loop.index <= shop.score}">
                                 <img src="resources/img/star_on.png">
                              </c:when>
                              <c:when test="${(loop.index-1) < shop.score}">
                                 <img src="resources/img/star_half.png">
                              </c:when>
                              <c:otherwise>
                                 <img src="resources/img/star_off.png">
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <br> <br>
                      <c:choose>
                        <c:when test="${shop.pid == sessionScope.loginEmail and shop.pid ne null}">
                           <a href="javascript:openUpdateShopForm(${shop.snum})">수정</a>
                           <a href="emptyShop?snum=${shop.snum}">삭제</a>
                           <br>
                        </c:when>
                     </c:choose>

                        <a class="btn btn-primary" href="shopInfo?snum=${shop.snum}">View Shop </a> 
                        
                        
                        <%
                        if (session.getAttribute("loginEmail") == null) {
                    	 %>
                        <a class="btn btn-warning" onclick="myFunction()" class="btn btn-success" 
                        data-target="#myModal" data-toggle="modal"> 좋아요! <i class="fa fa-thumbs-up"></i>
                        </a>

                     	<%
                        } else {
                     	%>
                     	<a class="btn btn-warning" href="favoriteJoin?shop_num=${shop.snum}&snum=${shop.snum}&fid=<%=session.getAttribute("loginEmail") %>"> 
                                    좋아요! <i class="fa fa-thumbs-up"></i>
                        </a>
                     	<%
                        }
                     	%>
                        
                        
                        <br>
                         
                     &nbsp;좋아요 <font color="green">${shop.slike}</font>개&nbsp;
                     	    조회 <font color="green">${shop.hits} </font>회
                  </h4>
               </div>
               <br><br>
            </div>
            
            <!-- /.row -->
      </c:forEach>
      <hr>
      <div class="text-center">
         <div class="col-lg-12">
            <ul class="pagination">
               <%for (int i=1; i<=pagenum; i++){ %>
               <p id='<%=i%>' onclick="paging($(this));" class="btn btn-primary"><%= i %></p>
               <%} %>

            </ul>
         </div>
      </div>
      <!-- Footer -->
      <footer>
         <div class="row">
            <div class="col-lg-12">
               <p>Copyright &copy; Your Website 2016</p>
            </div>
         </div>
      </footer>

   </div>
   <!-- /.container -->

   <!-- jQuery -->
   <script src="resources/js/jquery.js"></script>

   <!-- Bootstrap Core JavaScript -->
   <script src="resources/js/bootstrap.min.js"></script>
   
   
   <div class="modal fade" align="center" id="myModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document"
			style="width: 400px; padding-top: 70px;">
			<div class="modal-content">
				<div class="modal-header m-header">
					<div class="modal-header-logo" style="text-align: center;">
						<h3>Login</h3>
						<hr
							style="margin-top: 10px; margin-bottom: 45px;; width: 120px; border: 1.5px solid gray;" />
					</div>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<!-- 		<div class="login-sel">
					<a class="loginMember">업체 회원 로그인</a>
				</div> -->
				<form id="loginForm1" action='joinCheck' method='post'>
					<div class="modal-body">
						<input id="pid" name="pid" type="text" placeholder="아이디" />
						<!-- 	 <input type="button" value="회원가입" class="btn btn-warning" onclick="location.href='perJoinForm'"> -->
						<br> <br /> <input id="ppassword" name="ppassword"
							type="password" placeholder="비밀번호" /> <br>
						<br> <input type="submit" class="btn btn-success" value="로그인" />
						<input type="reset" class="btn btn-warning" value="취소" />
					</div>

					<div id="naver_id_login" align="center"></div>
					<fb:login-button class="facebook" size="xlarge"
						scope="public_profile,email" onlogin="checkLoginState();"
						align="center" size="large">
					</fb:login-button>
					<div id="status" style="display: none;"></div>

				</form>
				<div align="center">
					<form id="floginForm" action="loginCheck" method="post"
						style="display: none;">
						<%
							System.out.println("f logincheck 실행" + session.getAttribute("loginEmail"));
						%>
						<input id="fid" name="pid" value="" /> <input id="fname"
							name="pname" value="" /> <input id="fpassword" name="ppassword"
							value="facebook" /> <input id="ftype" name="ptype" value="1" />
					</form>
					<br>

					<form id="loginForm" action="loginCheck" method="post"
						style="display: none;">
						<%
							System.out.println("logincheck 실행" + session.getAttribute("loginEmail"));
						%>
						<input id="nid" name="pid" value="" /> <input id="nname"
							name="pname" value="" /> <input id="npassword" name="ppassword"
							value="naver" /> <input id="ntype" name="ptype" value="1" />
					</form>
				</div>
				<form id="logout1" action="logout" method="post"
					style="display: none;"></form>

				<!--                <div style="display : none;"> -->

				<!--                   <input type="hidden" id = "hidEMAIL" value=""/> -->
				<!--                   <input type="hidden" id = "hidNICKNAME"  value=""/> -->
				<!--                   <input type="hidden" id = "hidAGE" value="" /> -->
				<!--                </div> -->


				<!--                <div class="modal-footer"> -->
				<!--                   <input type="submit" class="btnlogin" -->
				<!--                      class="btn btn-primary-outline" data-dismiss="modal" onclick="$('#loginForm').submit();" value="로그인" /> -->
				<!--                </div> -->



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
			//       session.setAttribute("loginType", null);
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
			interval : 2000
		//changes the speed
		})
	</script>


	<script type="text/javascript">
		var naver_id_login = new naver_id_login("yqzzax9I8h6vungLtVY3",
				"http://127.0.0.1:80/ClothesUp/main1");
		var state = naver_id_login.getUniqState();

		naver_id_login.setButton("white", 2, 40);
		naver_id_login.setDomain(".service.com");
		naver_id_login.setState(state);
		//    naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
	</script>
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
			if ($('#pid').val() != null) {
				$('#naver_id_login').hide();
			} else {
				$('#naver_id_login').show();
			}

			$('#loginForm').submit();
		}
		naver_id_login.get_naver_userprofile("naverSignInCallback()");

		function click_logout() {
			$.ajax({
				type : "POST",
				dataType : 'text',
				url : "http://nid.naver.com/nidlogin.logout",
				crossDomain : true,
				xhrFields : {
					withCredentials : true
				}
			}).done(function(data) {

				$('#logout1').submit();
			}).fail(function(xhr, textStatus, errorThrown) {

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
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into this app.';
			} else {
				// The person is not logged into Facebook, so we're not sure if
				// they are logged into this app or not.
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into Facebook.';
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
				appId : '300489586986143',
				xfbml : true,
				version : 'v2.7'
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
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {
				return;
			}
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		// Here we run a very simple test of the Graph API after login is
		// successful.  See statusChangeCallback() for when this call is made.
		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB
					.api(
							'/me?fields=email,id,name',
							function(response) {
								console.log('Successful login for: '
										+ response.name);
								//alert(JSON.stringify(response));
								document.getElementById('status').innerHTML = 'Thanks for logging in, '
										+ response.name
										+ response.email
										+ "  id " + response.id + '!';

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
				} else if (response.status === 'not_authorized') {
					FB.logout(function(response) {
						document.location.reload();

					});
				}
			});
		}
	</script>

	<script>
		window.fbAsyncInit = function() {
			FB.init({
				appId : '300489586986143',
				xfbml : true,
				version : 'v2.7'
			});
		};

		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {
				return;
			}
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

</body>

</html>