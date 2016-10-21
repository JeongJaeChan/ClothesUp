<!DOCTYPE jsp>
<jsp lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <!-- jsp5 Shim and Respond.js IE8 support of jsp5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/jsp5shiv/3.7.0/jsp5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




<script language="javascript"> 

function openUpdateShopForm(snum) {
	window.open("updateShopForm?snum="+snum, 'UpdateShop', 'width=500, height=550, menubar="no", toolbar="no"');
}

function openAddShopForm() {
	
	window.open("addShopForm", 'AddShop', 'width=500, height=550, menubar="no", toolbar="no"');
	}
	
</script> 





</head>
 
<body>
<%@include file="header.jsp" %>
    <!-- Navigation -->
     

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Shop List
                    <small>강남역 지하상가</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Shop List</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        
        <div align="right">
        <input type="button" class="btn btn-default" onClick="openAddShopForm()" value="업체 등록">
        </div>
        <hr>
        
        <!-- Shop list -->
        <c:forEach items="${shopList}" var="shop">
        ${shop.simage}
        <div class="row">
            <div class="col-md-7">
                <a href="shopInfo?snum=${shop.snum}">
                    <img src="${simage }" width="500" height="300">
                </a>
            </div>
            <div class="col-md-5">
                <font size="3" color="green">${shop.sname}</font>
                <br>
                <h4>상점번호) ${shop.snum}</h4>
                <h4>상점주인) ${shop.pid}</h4>
                <h4>category) ${shop.scategory}</h4>
                
                <i class="fa fa-phone"></i> 
                <abbr title="Phone">P</abbr> : ${shop.phone}
                <br><br><br>
             	<h4>Intro)</h4>
                <h4>${shop.intro}</h4>
                <br>
                <a href="javascript:openUpdateShopForm(${shop.snum})">수정</a>
                <a href="deleteShop?snum=${shop.snum}">삭제</a><br>
                
                <a class="btn btn-info" href="shopInfo?snum=${shop.snum}">View Shop</a>
                <a class="btn btn-warning" 
                href="favoriteJoin?shop_num=${shop.snum}&snum=${shop.snum}&fid=<%=session.getAttribute("loginEmail") %>">
                	좋아요! <i class="fa fa-thumbs-up"></i></a>
            </div>
               <h4>&nbsp;&nbsp;&nbsp;좋아요 <font color="green">${shop.slike}</font>개&nbsp;
              	 조회 <font color="green">${shop.hits}</font>회 </h4>
        </div>
        <hr>
		</c:forEach>
		
        <hr>

        <!-- Pagination -->
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

		
        <hr>

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

</body>

</html>
