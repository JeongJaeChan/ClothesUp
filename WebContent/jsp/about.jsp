<%@page import="java.io.IOException"%>
<%@page import="kr.ac.cu.vo.ShopVO"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-2.1.0.js"></script>
<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script type="text/javascript" src="http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"></script>
 -->
<!-- <script type="text/javascript">
$(function() {
      $('.gnmap').maphilight();
   });
</script>
    -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">


</head>

<body>

   <% int pagenum=1;
      int pagecount=0;
      
      int spagenum=1;
      int spagecount=0;
      
      int cpagenum=1;
      int cpagecount=0;%>


<script type="text/javascript">
 function marker(obj){
   var markershop= 'ms_' + obj.attr('id');

      $(".marker").hide();
      if (document.getElementById(markershop).style.display == "") {
         document.getElementById(markershop).style.display = "none";
      } else {
         document.getElementById(markershop).style.display = "";
      }
   }
</script> 

 <script>
 function paging(obj){
      var pg=obj.attr('id');
      //alert(pg);
      
       $(".thumbnail").hide();
        for(var i=(parseInt(pg)*12)-11; i<=parseInt(pg)*12; i++){
          // alert(i);
         var pgnum='pg_'+i;
           if (document.getElementById(pgnum).style.display == "") {
            document.getElementById(pgnum).style.display = "none";
         } else {
            document.getElementById(pgnum).style.display = "";
         }
        }
      } 
</script>


<script>
 function spaging(obj){
      var sg=obj.attr('id');
      //alert(pg);
         $(".thumbnail").hide();
        for(var i=(parseInt(sg)*12)-11; i<=parseInt(sg)*12; i++){
          // alert(i);
         var sgnum='sg_'+i;
           if (document.getElementById(sgnum).style.display == "") {
            document.getElementById(sgnum).style.display = "none";
         } else {
            document.getElementById(sgnum).style.display = "";
         }
        }
      } 
</script>

<script>
 function cpaging(obj){
      var cg=obj.attr('id');
      //alert(pg);
         $(".thumbnail").hide();
        for(var i=(parseInt(cg)*12)-11; i<=parseInt(cg)*12; i++){
          // alert(i);
         var cgnum='cg_'+i;
           if (document.getElementById(cgnum).style.display == "") {
            document.getElementById(cgnum).style.display = "none";
         } else {
            document.getElementById(cgnum).style.display = "";
         }
        }
      } 
</script>
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
                <a class="navbar-brand" href="index.jsp">Start Bootstrap</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
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
                        <a href="favorite">좋아요</a>
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
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

   <!-- Page Content -->
   <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <div class="row">
         <div class="col-lg-12">
            <h1 class="page-header">
               Map <small></small>
            </h1>
            <ol class="breadcrumb">
               <li><a href="index.jsp">Home</a></li>
               <li class="active">Map</li>
            </ol>
         </div>
      </div>
  
      
        
      <div class="row">
         <div class="col-md-6">     
            <div  style="position:relative;left:0px;top:0px; z-index: 2;">
            <img  class="gnmap" src="resources/img/finalmap.png"  usemap="#imgmap"   width="1100px" height="1100px" alt="" />
            <map id="imgmap" name="imgmap">
               <c:forEach var="shop" items="${shopList}">
      
                  <area class="name"  id="${shop.simage}~${shop.sname}~${shop.section}~${shop.sectionnum}" shape="rect"
                     coords=" ${shop.x1} ,${shop.y1},${shop.x2},${shop.y2}" href="#"
                      target=""
                    
                    onmouseover="doTooltip(event,$(this))" onmouseout="hideTip()" onclick="location='shopInfo?snum=${shop.snum}'" />
               
               </c:forEach>
            </map>
            <c:forEach var="shop" items="${shopList}">
            
            <div class="marker" id="ms_${shop.snum}" style="position:absolute; display : none; left:${((shop.x1+shop.x2)/2)-10}px; top:${((shop.y1+shop.y2)/2)-40}px; z-index: 1;">
            <img src="resources/img/marker.png"   
             width="20px" height="40px" alt="" onclick="location='shopInfo?snum=${shop.snum}'"  />
            </div>

              </c:forEach>
         </div>


      </div>

      <div class="container"> 
         <div class="col-lg-12">
            <h2 class="page-header">Search</h2>
         </div>
         <div class="container">         
         </div>
         <div id="myTabContent" class="tab-content">
          <ul id="myTab" class="nav nav-tabs nav-justified">
            <li class=${a}><a href="#service-one" data-toggle="tab" onclick="location='about'">ALL</a></li>
            <li class=${b}><a href="#service-two" data-toggle="tab">카테고리별 검색</a></li>
            <li class=${c}><a href="#service-three" data-toggle="tab">매장명 검색</a></li>
         </ul>
            <div class="${oneservice}" id="service-one">
               <div class="col-lg-12">   
               </div>
 <br>
               <c:forEach var="shop" items="${shopList}">
                      <% pagecount++;
                           if(pagecount>(12*pagenum)){
                              pagenum++;
                           }
                           %> 
     
                  <div   class="col-md-4 text-center">
              <%if(pagecount<=12){ %>
                  <div class="thumbnail"  id="pg_<%=pagecount%>" style="display :block">
              <%}else{  %>
                     <div class="thumbnail"  id="pg_<%=pagecount%>" style="display : none;">
                     <%} %>
                        <img class="img-responsive" src="http://placehold.it/750x450" alt="">
                        <div class="caption">
                           <font size="5" color="green">${shop.sname}</font> <br>
                              <h3>${shop.section} - ${shop.sectionnum}</h3>
                   
                           <h5>${shop.gccategory}</h5>
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
                           <br><br>
                             
                   <button id='${shop.snum}' value=snum class="btn btn-primary" onclick="marker($(this));" >위치보기</button>
                           <button type="submit" class="btn btn-primary" onclick="location='shopInfo?snum=${shop.snum}'">상점가기</button>
                        </div>
                   </div>
                  </div>
                  </c:forEach>
                  <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                <%for (int i=1; i<=pagenum; i++){ %>
                        <p id='<%=i%>' onclick="paging($(this));"  class="btn btn-primary"><%= i %></p>
             <%} %> 
                    
                </ul>
            </div>
        </div>
 </div>

            
            
            
            <div class="${twoservice}" id="service-two">
               <form name="categorys" method="post" action="selectCategoryShop">
                  <br> <select name="scategory" id="scategory" value="">
               
                     <c:if test="${scategory ==  1}">
                     <option value=1 selected>의류</option></c:if>
                     <c:if test="${scategory !=  1}">
                     <option value=1>의류</option></c:if>
                     
                     
                     <c:if test="${scategory ==  2}">
                     <option value=2 selected>악세사리</option></c:if>
                     <c:if test="${scategory !=  2}">
                     <option value=2>악세사리</option></c:if>
                     
                     
                     <c:if test="${scategory ==  3}">
                     <option value=3 selected>내의</option></c:if>
                     <c:if test="${scategory !=  3}">
                     <option value=3>내의</option></c:if>
                     
                     
                     <c:if test="${scategory ==  4}">
                     <option value=4 selected>휴대폰악세사리</option></c:if>
                     <c:if test="${scategory !=  4}">
                     <option value=4>휴대폰악세사리</option></c:if>
                     
                     
                     <c:if test="${scategory ==  5}">
                     <option value=5 selected>신발</option></c:if>
                     <c:if test="${scategory !=  5}">
                     <option value=5>신발</option></c:if>
                     
                     
                     <c:if test="${scategory ==  6}">
                     <option value=6 selected>가방</option></c:if>
                     <c:if test="${scategory !=  6}">
                     <option value=6>가방</option></c:if>
                     
                     
                     <c:if test="${scategory ==  7}">
                     <option value=7 selected>잡화</option></c:if>
                     <c:if test="${scategory !=  7}">
                     <option value=7>잡화</option></c:if>
                     
                     <c:if test="${scategory ==  8}">
                     <option value=8 selected>편의점</option></c:if>
                     <c:if test="${scategory !=  8}">
                     <option value=8>편의점</option></c:if>
                     
                   <c:if test="${scategory ==  9}">
                     <option value=9 selected>화장품</option></c:if>
                     <c:if test="${scategory !=  9}">
                     <option value=9>화장품</option></c:if>
                     
                     <c:if test="${scategory ==  10}">
                     <option value=10 selected>이동통신</option></c:if>
                     <c:if test="${scategory !=  10}">
                     <option value=10>이동통신</option></c:if>
                     
                     <c:if test="${scategory ==  11}">
                     <option value=11 selected>식품</option></c:if>
                     <c:if test="${scategory !=  11}">
                     <option value=11>식품</option></c:if>
                     
                     <c:if test="${scategory ==  12}">
                     <option value=12 selected>약국</option></c:if>
                     <c:if test="${scategory !=  12}">
                     <option value=12>약국</option></c:if>
                  </select>
                  
                  <button type="submit" class="btn btn-primary" href="">검색</button>
               </form>
               
               <script language="javascript">document.categorys.test.value="${scategory}";</script>
            
            <br>
         
          
               <c:forEach var="cshop" items="${selectCategoryShop}">
                <% spagecount++;
                           if(spagecount>(12*spagenum)){
                              spagenum++;
                           }
                           %> 
                  <div class="col-md-4 text-center">
         <%if(spagecount<=12){ %>
                  <div class="thumbnail"  id="sg_<%=spagecount%>" style="display :">
              <%}else{  %>
              
                     <div class="thumbnail"  id="sg_<%=spagecount%>" style="display : none;">
                     <%} %>
                   
                        <img class="img-responsive" src="http://placehold.it/750x450"
                           alt="">
                        <div class="caption">
                           <font size="5" color="green">${cshop.sname}</font> <br>
                           <h3>${cshop.section} - ${cshop.sectionnum}</h3>
                           
                            <h5>${cshop.gccategory}</h5>
                            
                           <c:forEach begin="1" end="5" varStatus="loop">
                           <c:choose>
                              <c:when test="${loop.index <= cshop.score}">
                                 <img src="resources/img/star_on.png">
                              </c:when>
                              <c:when test="${(loop.index-1) < cshop.score}">
                                 <img src="resources/img/star_half.png">
                              </c:when>
                              <c:otherwise>
                                 <img src="resources/img/star_off.png">
                              </c:otherwise>
                           </c:choose>
                        </c:forEach><br><br>
                       
                            <button id='${cshop.snum}'  class="btn btn-primary" onclick="marker($(this));">위치보기</button>
                           <button type="submit" class="btn btn-primary" onclick="location='shopInfo?snum=${cshop.snum}'">상점가기</button>
                          
                        </div>
                        
                         
                     </div>
                  </div>
               </c:forEach>
               
               
                <div class="row text-center">
            <div class="col-lg-12">
                   <ul class="pagination">
                    
                         <%for (int j=1; j<=spagenum; j++){ %>
                        <button id='<%=j%>' onclick="spaging($(this));"  class="btn btn-primary"><%= j %></button>
               
             <%} %> 
                </ul>
            </div>
        </div>
            </div>
            

            
            
            <div class="${threeservice}" id="service-three">
               <h3>매장명:</h3>
               <form method="post" action="selectnameShop">
                  <input type="text" class="form-control" name="sname"> <br>
                  <button type="submit" class="btn btn-primary">검색</button>
                  <br>
               </form>
               <br>
               <c:forEach var="nshop" items="${selectnameShop}">
                    <% cpagecount++;
                           if(cpagecount>(12*cpagenum)){
                              cpagenum++;
                           }
                           %> 
                  <div class="col-md-4 text-center">
                   <%if(cpagecount<=12){ %>
                  <div class="thumbnail"  id="cg_<%=cpagecount%>" style="display :">
              <%}else{  %>
              
                     <div class="thumbnail"  id="cg_<%=cpagecount%>" style="display : none;">
                     <%} %>
                   
                        <img class="img-responsive" src="http://placehold.it/750x450"
                           alt="">
                        <div class="caption">
                           <font size="5" color="green">${nshop.sname}</font> <br>
                            <h3>${nshop.section}- ${nshop.sectionnum}</h3>
                           
                            <h5>${nshop.gccategory}</h5>
                       <c:forEach begin="1" end="5" varStatus="loop">
                           <c:choose>
                              <c:when test="${loop.index <= nshop.score}">
                                 <img src="resources/img/star_on.png">
                              </c:when>
                              <c:when test="${(loop.index-1) < nshop.score}">
                                 <img src="resources/img/star_half.png">
                              </c:when>
                              <c:otherwise>
                                 <img src="resources/img/star_off.png">
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <br><br>
                  
                           <button id='${nshop.snum}' class="btn btn-primary" onclick="marker($(this));">위치보기</button>
                           <button type="submit" class="btn btn-primary" onclick="location='shopInfo?snum=${nshop.snum}'">상점가기</button>
                        </div>
                     </div>
                  </div>
               </c:forEach>
                <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                       <%for (int j=1; j<=cpagenum; j++){ %>
                        <button id='<%=j%>' onclick="cpaging($(this));"  class="btn btn-primary"><%= j %></button>
               
             <%} %> 
                    
                </ul>
            </div>
        </div>
            </div>
         

         
         </div>
      </div>

      <hr>

      <!-- Footer -->
      <footer>
      <div class="row">
         <div class="col-lg-12"></div>
      </div>
      </footer>

   </div>
   <!-- /.container -->

   <!-- jQuery -->
   <script src="resources/js/jquery.js"></script>
   

   <!-- Bootstrap Core JavaScript -->
   <script src="resources/js/bootstrap.min.js"></script>

</body>
<script type="text/javascript">

/* IMPORTANT: Put script after tooltip div or 
    put tooltip div just before </BODY>. */

var dom = (document.getElementById) ? true : false;
var ns5 = (!document.all && dom || window.opera) ? true: false;
var ie5 = ((navigator.userAgent.indexOf("MSIE")>-1) && dom) ? true : false;
var ie4 = (document.all && !dom) ? true : false;
var nodyn = (!ns5 && !ie4 && !ie5 && !dom) ? true : false;

var origWidth, origHeight;

// avoid error of passing event object in older browsers
if (nodyn) { event = "nope" }

///////////////////////  CUSTOMIZE HERE   ////////////////////
// settings for tooltip 
// Do you want tip to move when mouse moves over link?
var tipFollowMouse= true;   
// Be sure to set tipWidth wide enough for widest image
var tipWidth= 200;
var offX= 20;   // how far from mouse to show tip
var offY= 12; 
var tipFontFamily= "Verdana, arial, helvetica, sans-serif";
var tipFontSize= "10pt";
// set default text color and background color for tooltip here
// individual tooltips can have their own (set in messages arrays)
// but don't have to
var tipFontColor= "#000000";
var tipBgColor= "#DDECFF"; 
var tipBorderColor= "#000080";
var tipBorderWidth= 3;
var tipBorderStyle= "ridge";
var tipPadding= 4;

// tooltip content goes here (image, description, optional bgColor, optional textcolor)
var messages = new Array();
// multi-dimensional arrays containing: 
// image and text for tooltip
// optional: bgColor and color to be sent to tooltip
messages[0] = new Array('http://www.webmadang.net/jackman_lecture/script/2_s.jpg','Hi javascript',"#FFFFFF");

////////////////////  END OF CUSTOMIZATION AREA  ///////////////////

// preload images that are to appear in tooltip
// from arrays above



if (document.images) {
   var theImgs = new Array();
   for (var i=0; i<messages.length; i++) {
     theImgs[i] = new Image();
      theImgs[i].src = messages[i][0];
  }
}



// to layout image and text, 2-row table, image centered in top cell
// these go in var tip in doTooltip function
// startStr goes before image, midStr goes between image and text

var startStr = '<table width="' + tipWidth + '"><tr><img src="resources/upload/';
var midStr = '" border="0" width="100px" height="100px"></tr><tr><td>';
var endStr = '</td></tr></table>';

////////////////////////////////////////////////////////////
//  initTip   - initialization for tooltip.
//      Global variables for tooltip. 
//      Set styles
//      Set up mousemove capture if tipFollowMouse set true.
////////////////////////////////////////////////////////////
var tooltip, tipcss;
function initTip() {
   if (nodyn) return;
   tooltip = (ie4)? document.all['tipDiv']: (ie5||ns5)? document.getElementById('tipDiv'): null;
   tipcss = tooltip.style;
   if (ie4||ie5||ns5) {   // ns4 would lose all this on rewrites
      tipcss.width = tipWidth+"px";
      tipcss.fontFamily = tipFontFamily;
      tipcss.fontSize = tipFontSize;
      tipcss.color = tipFontColor;
      tipcss.backgroundColor = tipBgColor;
      tipcss.borderColor = tipBorderColor;
      tipcss.borderWidth = tipBorderWidth+"px";
      tipcss.padding = tipPadding+"px";
      tipcss.borderStyle = tipBorderStyle;
   }
   if (tooltip&&tipFollowMouse) {
      document.onmousemove = trackMouse;
   }
}

window.onload = initTip;

/////////////////////////////////////////////////
//  doTooltip function
//         Assembles content for tooltip and writes 
//         it to tipDiv
/////////////////////////////////////////////////
var t1,t2;   // for setTimeouts
var tipOn = false;   // check if over tooltip link


function doTooltip(evt,obj) {
   var shop= obj.attr('id');
   //var sname=document.getElementById(name);
   var strArray=shop.split('~');
   if (!tooltip) return;
   if (t1) clearTimeout(t1);   
   if (t2) clearTimeout(t2);
   tipOn = true;
     curBgColor = tipBgColor;
     curFontColor = tipFontColor;
   if (ie4||ie5||ns5) {
      var tip = startStr+ strArray[0] + midStr + '<span style="font-family:' + 
      tipFontFamily + '; font-size:' + tipFontSize + '; color:' + curFontColor + ';">' + 
    strArray[1] +'</span>'+'</td>'+'</tr>' + '<tr>'+'<td>'+ strArray[2]+"-"+strArray[3] +'</span>' +endStr;
      
      tipcss.backgroundColor = curBgColor;
       tooltip.innerHTML = tip;
   }
   if (!tipFollowMouse) positionTip(evt);
   else t1=setTimeout("tipcss.visibility='visible'",100);
}

var mouseX, mouseY;
function trackMouse(evt) {
   standardbody=(document.compatMode=="CSS1Compat")? document.documentElement : document.body //create reference to common "body" across doctypes
   mouseX = (ns5)? evt.pageX: window.event.clientX + standardbody.scrollLeft;
   mouseY = (ns5)? evt.pageY: window.event.clientY + standardbody.scrollTop;
   if (tipOn) positionTip(evt);
}

/////////////////////////////////////////////////////////////
//  positionTip function
//      If tipFollowMouse set false, so trackMouse function
//      not being used, get position of mouseover event.
//      Calculations use mouseover event position, 
//      offset amounts and tooltip width to position
//      tooltip within window.
/////////////////////////////////////////////////////////////
function positionTip(evt) {
   if (!tipFollowMouse) {
      standardbody=(document.compatMode=="CSS1Compat")? document.documentElement : document.body
      mouseX = (ns5)? evt.pageX: window.event.clientX + standardbody.scrollLeft;
      mouseY = (ns5)? evt.pageY: window.event.clientY + standardbody.scrollTop;
   }
   // tooltip width and height
   var tpWd = (ie4||ie5)? tooltip.clientWidth: tooltip.offsetWidth;
   var tpHt = (ie4||ie5)? tooltip.clientHeight: tooltip.offsetHeight;
   // document area in view (subtract scrollbar width for ns)
   var winWd = (ns5)? window.innerWidth-20+window.pageXOffset: standardbody.clientWidth+standardbody.scrollLeft;
   var winHt = (ns5)? window.innerHeight-20+window.pageYOffset: standardbody.clientHeight+standardbody.scrollTop;
   // check mouse position against tip and window dimensions
   // and position the tooltip 
   if ((mouseX+offX+tpWd)>winWd) 
      tipcss.left = mouseX-(tpWd+offX)+"px";
   else tipcss.left = mouseX+offX+"px";
   if ((mouseY+offY+tpHt)>winHt) 
      tipcss.top = winHt-(tpHt+offY)+"px";
   else tipcss.top = mouseY+offY+"px";
   if (!tipFollowMouse) t1=setTimeout("tipcss.visibility='visible'",100);
}

function hideTip() {
   if (!tooltip) return;
   t2=setTimeout("tipcss.visibility='hidden'",100);
   tipOn = false;
}

document.write('<div id="tipDiv" style="position:absolute; visibility:hidden; z-index:100"></div>')
</script>
</html>