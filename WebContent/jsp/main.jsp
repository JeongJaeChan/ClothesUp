<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.ac.cu.vo.PersonVO"%>
<%@page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="resources/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="resources/css/styles.css">

<!-- Custom CSS -->
<link href="resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
	function no_login() {
		alert("로그인이 필요합니다.");

	}
</script>

<script type="text/javascript">
	function myFunction() {
		if (document.getElementById("myDropdown") != null) {
			document.getElementById("myDropdown").classList.toggle("show");
			if (document.getElementById("myDropdown").classList[1] != null) {
				$("#myPageBtn").attr("src", "resources/images/mypage_up.png")
			} else {
				$("#myPageBtn").attr("src", "resources/images/mypage_down.png")
			}
		}
	}

	// Close the dropdown menu if the user clicks outside of it
	window.onclick = function(event) {

		if (event.target.classList[0] == '.dropbtn') {

			var dropdowns = document.getElementsByClassName("dropdown-content");
			var i;
			for (i = 0; i < dropdowns.length; i++) {
				var openDropdown = dropdowns[i];
				if (openDropdown.classList.contains('show')) {
					openDropdown.classList.remove('show');
				}
			}
		}
	}
</script>
</head>

<body>

	<script type="text/javascript">
		var message = '${msg}';
		var returnUrl = '${url}';
		alert(mag);
		document.location.href = url;
	</script>

	<%@page import="kr.ac.cu.vo.PersonVO"%>
	<%
		System.out.println("loginEmail" + session.getAttribute("loginEmail"));
	%>
	<!-- Navigation -->

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">Home</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->

		<%
			if (session.getAttribute("loginEmail") == null) {
		%>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a onclick="myFunction()" class="dropbtn"
					data-target="#myModal" data-toggle="modal">로그인</a></li>
				<li><a href="perJoinForm">회원가입</a></li>
				<li><a href="about">지도</a></li>
				<li><a href="shoplist?pg=1">매장</a></li>
				<li><a href="favorite" onclick="myFunction()" class="dropbtn"
					data-target="#myModal" data-toggle="modal">Favorite</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Portfolio <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="portfolio-1-col.html">1 Column Portfolio</a></li>
						<li><a href="portfolio-2-col.html">2 Column Portfolio</a></li>
						<li><a href="portfolio-3-col.html">3 Column Portfolio</a></li>
						<li><a href="portfolio-4-col.html">4 Column Portfolio</a></li>
						<li><a href="portfolio-item.html">Single Portfolio Item</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Blog <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="blog-home-1.jsp">Blog Home 1</a></li>
						<li><a href="blog-home-2.jsp">Blog Home 2</a></li>
						<li><a href="blog-post.jsp">Blog Post</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Other Pages <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="full-width.jsp">Full Width Page</a></li>
						<li><a href="sidebar.jsp">Sidebar Page</a></li>
						<li><a href="faq.jsp">FAQ</a></li>
						<li><a href="404.jsp">404</a></li>
						<li><a href="pricing.jsp">Pricing Table</a></li>
					</ul></li>
			</ul>
		</div>

		<%
			}

			else {
		%>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a onclick="myFunction()" class="dropbtn"> <%
 	out.print(session.getAttribute("loginEmail"));
 %>님
				</a>
					<div id="myDropdown" class="dropdown-content">
						<a class="dropMenu" href="updatePersonForm">정보수정</a>
						<hr class="dropLine" />
						<a class="dropMenu"
							href="myShopList?pid=<%=session.getAttribute("loginEmail")%>">내매장보기</a>
						<hr class="dropLine" />
						<a class="dropMenu" onclick="click_logout();">로그아웃</a>
					</div></li>
				<li><a href="about">지도</a></li>
				<li><a href="shoplist?pg=1">매장</a></li>
				<li><a
					href="favorite?fid=<%=session.getAttribute("loginEmail")%>">Favorite</a>
				</li>
				<li><a href="contact.jsp">Contact</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Portfolio <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="portfolio-1-col.html">1 Column Portfolio</a></li>
						<li><a href="portfolio-2-col.html">2 Column Portfolio</a></li>
						<li><a href="portfolio-3-col.html">3 Column Portfolio</a></li>
						<li><a href="portfolio-4-col.html">4 Column Portfolio</a></li>
						<li><a href="portfolio-item.html">Single Portfolio Item</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Blog <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="blog-home-1.jsp">Blog Home 1</a></li>
						<li><a href="blog-home-2.jsp">Blog Home 2</a></li>
						<li><a href="blog-post.jsp">Blog Post</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Other Pages <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="full-width.jsp">Full Width Page</a></li>
						<li><a href="sidebar.jsp">Sidebar Page</a></li>
						<li><a href="faq.jsp">FAQ</a></li>
						<li><a href="404.jsp">404</a></li>
						<li><a href="pricing.jsp">Pricing Table</a></li>
					</ul></li>
			</ul>
		</div>

		<%
			}
		%>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Header Carousel -->
	<header id="myCarousel" class="carousel slide"> <!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner">
		<div class="item active">
			<div class="fill"
				style="background-image: url('http://pds.skyedaily.com/news_data/1350055099QCJEmjQ1IKmyuYNH');"></div>
			<div class="carousel-caption">
				<h2>Caption 1</h2>
			</div>
		</div>
		<div class="item">
			<div class="fill"
				style="background-image: url('http://mblogthumb1.phinf.naver.net/20111103_32/ojye00_1320292810066udpMN_JPEG/2011-10-30_10.21.16.jpg?type=w2');"></div>
			<div class="carousel-caption">
				<h2>Caption 2</h2>
			</div>
		</div>
		<div class="item">
			<div class="fill"
				style="background-image: url('http://www.sptoday.com/data/geditor/1401/[2]3.JPG');"></div>
			<div class="carousel-caption">
				<h2>Caption 3</h2>
			</div>
		</div>
	</div>

	<!-- Controls --> <a class="left carousel-control" href="#myCarousel"
		data-slide="prev"> <span class="icon-prev"></span>
	</a> <a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="icon-next"></span>
	</a> </header>

	<!-- Page Content -->
	<div class="container">


		<!-- /.row -->



		<!-- Portfolio Section -->
		<%-- 		<%
            int num=0;
             %>
		<c:forEach items="${shopList}" var="shop">
			<% 
               if(num<6){
             	%>
			<div class="col-md-4 col-sm-6">
				<a href="shopInfo?snum=${shop.snum}"> 
				<img class="img-responsive img-portfolio img-hover" src="resources/img/m1.jpg" alt="">
				</a>
			</div>
			<%
              }
               	num++;
            	System.out.println("num : "+num);
              %>
		</c:forEach> --%>
		<!-- Blog Post Row -->
		<div class="col-lg-12">
			<h3 class="page-header">TOP 3</h3>
		</div>
		<div class="row">
			<div class="col-md-1 text-center">
				<p>
					<img class="img-responsive img-hover" src="resources/img/one.jpg"
						alt=""></i>
				</p>

			</div>
			<div class="col-md-5">
				<a href="blog-post.jsp"> <img class="img-responsive img-hover"
					src="http://placehold.it/600x300" alt="">
				</a>
			</div>
			<div class="col-md-6">
				<h3>
					<a href="blog-post.jsp">Blog Post Title</a>
				</h3>
				<p>
					by <a href="#">Start Bootstrap</a>
				</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur.</p>
				<a class="btn btn-primary" href="blog-post.jsp">Read More <i
					class="fa fa-angle-right"></i></a>
			</div>
		</div>
		<!-- /.row -->

		<hr>
		<!-- Blog Post Row -->
		<div class="row">
			<div class="col-md-1 text-center">
				<p>
					<img class="img-responsive img-hover" src="resources/img/two.jpg"
						alt=""></i>
				</p>

			</div>
			<div class="col-md-5">
				<a href="blog-post.jsp"> <img class="img-responsive img-hover"
					src="http://placehold.it/600x300" alt="">
				</a>
			</div>
			<div class="col-md-6">
				<h3>
					<a href="blog-post.jsp">Blog Post Title</a>
				</h3>
				<p>
					by <a href="#">Start Bootstrap</a>
				</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur.</p>
				<a class="btn btn-primary" href="blog-post.jsp">Read More <i
					class="fa fa-angle-right"></i></a>
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Blog Post Row -->
		<div class="row">
			<div class="col-md-1 text-center">
				<p>
					<img class="img-responsive img-hover" src="resources/img/three.jpg"
						alt=""></i>
			</div>
			<div class="col-md-5">
				<a href="blog-post.jsp"> <img class="img-responsive img-hover"
					src="http://placehold.it/600x300" alt="">
				</a>
			</div>
			<div class="col-md-6">
				<h3>
					<a href="blog-post.jsp">Blog Post Title</a>
				</h3>
				<p>
					by <a href="#">Start Bootstrap</a>
				</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur.</p>
				<a class="btn btn-primary" href="blog-post.jsp">Read More <i
					class="fa fa-angle-right"></i></a>
			</div>
		</div>
		<!-- /.row -->

		<hr>
		<header id="myCarousel2" class="carousel slide"> <!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel2" data-slide-to="1"></li>
			<li data-target="#myCarousel2" data-slide-to="2"></li>
		</ol>
		<div class="row">
			<div class="carousel-inner">

				<div class="col-lg-12">
					<h3 class="page-header">New Arrivals</h3>
				</div>
				<div class="col-lg-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<%
									int i = 0;
									for (i = 0; i < 4; i++) {
								%>
								<img class="col-sm-3 col-xs-6" src="http://placehold.it/500x300"
									alt="">
								<%
									}
								%>
							</div>
							<div class="item">
								<%
									int j = 0;
									for (j = 0; j < 4; j++) {
								%>
								<img class="col-sm-3 col-xs-6" src="http://placehold.it/500x300"
									alt="">
								<%
									}
								%>
							</div>
							<div class="item">
								<%
									int k = 0;
									for (k = 0; k < 4; k++) {
								%>
								<img class="col-sm-3 col-xs-6" src="http://placehold.it/500x300"
									alt="">
								<%
									}
								%>
							</div>
							<!-- <div class="item">
                            <img class="img-responsive" src="http://placehold.it/500x300" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive" src="http://placehold.it/500x300" alt="">
                        </div>
                        
 -->
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> </a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> </a>
					</div>
				</div>
			</div>
		</div>




		<!-- Features Section -->
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">Center Info</h2>
			</div>
			<div class="col-md-6">
				<h3>고객만족센터</h3>
				<br> <br>
				<ul>
					<li><strong>운영시간 : AM 09:00~ PM 6:00</strong></li>
					<br>
					<li><strong>(공휴일 휴무)</strong></li>
					<br>
					<li>02-553-1898</li>
					<br>
					<li>02-557-1898</li>
					<br>
					<li>(주)강남역지하쇼핑센터</li>
					<br>
					<li>서울시 강남구 역삼동 821-1</li>

				</ul>

			</div>
			<div class="col-md-6">
				<img class="img-responsive"
					src="http://cfile5.uf.tistory.com/image/11555B364E5DC5E555C31C"
					alt="">
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<!-- Call to Action Section -->
		<div class="well">
			<div class="row">
				<div class="col-md-8">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Molestias, expedita, saepe, vero rerum deleniti beatae veniam
						harum neque nemo praesentium cum alias asperiores commodi.</p>
				</div>
				<div class="col-md-4">
					<a class="btn btn-lg btn-default btn-block" href="#">Call to
						Action</a>
				</div>
			</div>
		</div>

		<hr>

		<!-- Footer --> <footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; Your Website 2014</p>
			</div>
		</div>
		</footer>
	</div>

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