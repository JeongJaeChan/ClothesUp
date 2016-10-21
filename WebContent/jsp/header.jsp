<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="kr.ac.cu.vo.PersonVO" %>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

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
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">
	function no_login() {
		alert("로그인이 필요합니다.");
		history.back();
	}
</script>

<script type="text/javascript">
function myFunction() {
   if(document.getElementById("myDropdown") != null){
       document.getElementById("myDropdown").classList.toggle("show");
       if(document.getElementById("myDropdown").classList[1] != null){
          $("#myPageBtn").attr("src", "resources/images/mypage_up.png")
       }else{
          $("#myPageBtn").attr("src", "resources/images/mypage_down.png")
       }
   }
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {

  if (event.target.classList[0] =='.dropbtn' ) {

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
    <!-- Navigation -->
    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
            <%if(session.getAttribute("loginEmail") == null){%>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a onclick="myFunction()" class="dropbtn" 
				 data-target="#myModal" data-toggle="modal">로그인</a>
                    </li>
                    <li>
                        <a href="perJoinForm">회원가입</a>
                    </li>
                    <li>
                        <a href="about">지도</a>
                    </li>
                    <li>
                        <a href="shoplist?pg=1">매장</a>
                    </li>
                    <li>
                        <a href="favorite" onclick="no_login()">Favorite</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="portfolio-1-col.html">1 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-2-col.html">2 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-3-col.html">3 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-4-col.html">4 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-item.html">Single Portfolio Item</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.jsp">Blog Home 1</a>
                            </li>
                            <li>
                                <a href="blog-home-2.jsp">Blog Home 2</a>
                            </li>
                            <li>
                                <a href="blog-post.jsp">Blog Post</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="full-width.jsp">Full Width Page</a>
                            </li>
                            <li>
                                <a href="sidebar.jsp">Sidebar Page</a>
                            </li>
                            <li>
                                <a href="faq.jsp">FAQ</a>
                            </li>
                            <li>
                                <a href="404.jsp">404</a>
                            </li>
                            <li>
                                <a href="pricing.jsp">Pricing Table</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            
            <%}
            
            else{ %>
               <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a onclick="myFunction()" class="dropbtn"><%out.print(session.getAttribute("loginEmail")); %>님</a>
                        <div id="myDropdown" class="dropdown-content">
				<a class="dropMenu"  href="updatePersonForm">정보수정</a>
				<hr class="dropLine"/>
				<a class="dropMenu"  href="myShopList?pid=<%=session.getAttribute("loginEmail")%>">내매장보기</a>
				<hr class="dropLine"/>
				<a class="dropMenu"  onclick="click_logout();">로그아웃</a>
			</div>
                    </li>
                   <li>
                        <a href="about">지도</a>
                    </li>
                    <li>
                        <a href="shoplist?pg=1">매장</a>
                    </li>
                    <li>
                        <a href="favorite?fid=<%=session.getAttribute("loginEmail")%>">Favorite</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="portfolio-1-col.html">1 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-2-col.html">2 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-3-col.html">3 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-4-col.html">4 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-item.html">Single Portfolio Item</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.jsp">Blog Home 1</a>
                            </li>
                            <li>
                                <a href="blog-home-2.jsp">Blog Home 2</a>
                            </li>
                            <li>
                                <a href="blog-post.jsp">Blog Post</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="full-width.jsp">Full Width Page</a>
                            </li>
                            <li>
                                <a href="sidebar.jsp">Sidebar Page</a>
                            </li>
                            <li>
                                <a href="faq.jsp">FAQ</a>
                            </li>
                            <li>
                                <a href="404.jsp">404</a>
                            </li>
                            <li>
                                <a href="pricing.jsp">Pricing Table</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            
            <%} %>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
</body>

</html>