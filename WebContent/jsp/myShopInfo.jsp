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

function openupdategoodsform(gnum,snum) {
 window.open("updategoodsform?gnum="+gnum+"&"+"snum="+snum, 'updategoodsform', 'width=500, height=550, menubar="no", toolbar="no"');
}

function openAddBoardForm(snum) {
    window.open("addBoardForm?snum="+snum, 'AddBoardForm', 'width=500, height=550, menubar="no", toolbar="no"');
   }
   
function openAddGoodsForm(snum) {
    window.open("addGoodsForm?snum="+snum, 'zczc', 'width=500, height=300');
   }
   
function openGoodsInfoForm (gnum,snum) {

    window.open("goodsInfo?gnum="+gnum+"&"+"snum="+snum, 'goods', 'width=1000, height=550, menubar="no", toolbar="no"');
   }
   
</script>


<script language="javascript">
 
function goodsDelete (gnum){
	if (confirm("정말 삭제하시겠습니까??") {    //확인
		 location.href="deletegoods?gnum=" + gnum;
	}else{   //취소
	    return;
	}
	}
</script>

</head>

<body>

    <!-- Navigation -->
    <%@include file="header.jsp" %>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
            
                <h1 class="page-header">${shopInfo.sname}

                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Shop Info</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->






        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-8">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                        <p>
                            <img src="resources/img/m2.jpg" width="700" height="500" align="top">
                        </div>
                        
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <h3>상점 번호 : ${shopInfo.snum} </h3>
                <h3>${shopInfo.sname}</h3>
                <h3>카테고리 : ${shopInfo.gccategory}</h3>
                <h3>위치: ${shopInfo.section}-${shopInfo.sectionnum}</h3>              
                <h3>전화번호 : ${shopInfo.phone}</h3>
                <p>${shopInfo.intro}</p>
                
            </div>

        </div>
        <!-- /.row -->
        
        
        
        
        
        
        
        

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">상품 목록</h3>
            </div>
            
            <div align="right">
            <hr><hr>
              <input type="button" class="btn btn-default" 
              onClick="openAddGoodsForm(${shopInfo.snum})" value="상품 등록">
         </div>
           <hr>
           <c:forEach items="${goodsList}" var="goods">
            <div class="col-sm-3 col-xs-6">
                <a type="button" class="btn btn-default" 
                onClick="openGoodsInfoForm(${goods.gnum},${shopInfo.snum})">
                   <h4> 상품 이름 : ${goods.gname} </h4>
                   <h4> 상품 카테고리 : ${goods.gcnum }</h4>
                   <h4> 상품 번호 : ${goods.gnum} </h4>
                    <img class="img-responsive img-hover img-related" src="resources/img/m1.jpg" alt="">
                </a>
                
                <a href="javascript:openupdategoodsform(${goods.gnum},${shopInfo.snum})">수정</a>
                <a href="javascript:goodsDelete(${goods.gnum})">삭제</a>
                    
            </div>
         </c:forEach>
        </div>
        <!-- /.row -->
<br><br>
<div class="row">
           <div class="col-lg-12">
                <h2 class="page-header">Board</h2>
            </div>
            <div align="right">
         <hr>
         
         <hr>
        <input type="button" class="btn btn-default" onClick="openAddBoardForm(${shopInfo.snum})" value="board 작성">
        </div>
        <hr>
        
   <c:forEach items="${boardList}" var="board">
      
            <div class="col-board-5">
            <div>
            <div>
         <font size="3" color="green">${board.btitle}</font>
         </div>
         <div align="right">
         아이디 : ${board.pid} &nbsp;&nbsp;&nbsp;
         ${board.reg_date}
         </div>
         </div>
         
         <div>
         ${board.bcontent} <br>
         </div>
         
         
         <div>
         별점 : 
         
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
         
         
         
         
         
         
         
         
         
         
         
         
         
         <a href="javascript:openUpdateBoardForm(${board.boardnum})">수정</a>
            <a href="deleteBoard?boardnum=${board.boardnum}&snum=<%= request.getParameter("snum") %>" >삭제</a><br>
                
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




    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

</body>

</jsp>