<html lang="ko">
<head>
<script type="text/javascript" src="resources/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>



</head>
<body>
<%@page import="kr.ac.cu.vo.PersonVO" %>
<%-- <%System.out.println(request.getParameter("id")); %> --%>

<%-- <%if(request.getParameter("id")==null&&request.getParameter("story")!=""){ %> --%>
<div id="naver_id_login">
	
</div>
<form id="loginForm" action="loginCheck" method="post" style="display : none;">
<input id="pid" name="pid" value="" />
<input id="pname" name="pname" value="" />
<input id="ptype" name="ptype" value="1" />
</form>
<%-- <%} else{%> --%>
<h2><div class="test">login</div></h2>
<%-- <%} %> --%>
	
<div style="display : none;">
	
	<input type="hidden" id = "hidEMAIL" value=""/>
	<input type="hidden" id = "hidNICKNAME"  value=""/>
	<input type="hidden" id = "hidAGE" value="" />
</div>


<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naver_id_login = new naver_id_login("yqzzax9I8h6vungLtVY3", "http://127.0.0.1:6969/ClothesUp/login.jsp");
	var state = naver_id_login.getUniqState();

	naver_id_login.setButton("white", 2,40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
// 	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
	
</script>
<script type="text/javascript">
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	function naverSignInCallback() {
		// naver_id_login.getProfileData('프로필항목명');
		// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
// 		alert(naver_id_login.getProfileData('email'));
// 		alert(naver_id_login.getProfileData('nickname'));
// alert(naver_id_login.getProfileData('name'));
// 		alert(naver_id_login.getProfileData('age'));
			//$('#naver_id_login a').click(function(){
			
			//});
// 		    email   = naver_id_login.getProfileData('nickname');
// 		    snsName = naver_id_login.getProfileData('age');
		//$('.test').html(naver_id_login.getProfileData('email'));
		
		$('#pid').val(naver_id_login.getProfileData('email'));
		$('#pname').val(naver_id_login.getProfileData('nickname'));
		$('#hidAGE').val(naver_id_login.getProfileData('age'));
		
		if($('#hidEMAIL').val() != null){
			$('#naver_id_login').hide();
		}else{
			$('#naver_id_login').show();
		}
		alert('test');
		$('#loginForm').submit();
	}
<%-- 		<%request.setAttribute("id", "snsIdx"); %> --%>
	

	// 네이버 사용자 프로필 조회
	
	naver_id_login.get_naver_userprofile("naverSignInCallback()");

	//return naver_id_login;
	
	//document.getElementById("test").innerHTML = "My new text!";​

</script>
</body>
</html>