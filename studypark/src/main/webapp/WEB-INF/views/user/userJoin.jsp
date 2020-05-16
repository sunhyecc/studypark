<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudyPark 회원가입을 해주세요^-^</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
.main{ width:50%; margin:0 auto;}
.whiteBox{padding:70px;}
.joinTitle{font-size:30px; text-align: center;}
.agreeFont{font-size:16px; color:red; margin:50px 0px 10px 295px;}
.agreeBox ul li{ list-style: none; margin:10px 0px;}
.agreeBox ul li p {display: inline-block;}
.agreeBox input[type="checkBox"]{margin-right:7px; zoom: 1.5;}
.agreeBox { width: 330px; padding: 20px; border: 2px solid rgb(158, 158, 158);border-radius: 5px;margin-left: 295px;}
.agreeLine{width:310px; background:rgb(158, 158, 158); padding:1px; margin:10px 0px 10px 0px;}
.pil{color:#1CD8A9;}
.snsJoinBox ul li{list-style: none; display: inline-block;}
.snsJoinBox{text-align:center;}
.snsJoinFont{color:#333333; text-align:center; margin-top:20px; }
.line{width:500px; background:rgb(158, 158, 158); padding:1px; margin:20px 0px 50px 235px;}
.infoBox {margin-left: 235px;}
.infoBox input[type="text"]{padding: 5px 0px 5px 0px;font-size:18px;width:20%; margin:7px 0px 20px 0px;}
.infoBox button{padding: 10px 25px;background: #1CD8A9; border: 1px solid #1CD8A9; border-radius: 5px;}
.infoBox .passwordBox p {margin-bottom:5px; display:inline-block;}
.infoBox .passwordBox input[type="text"] {display: block;font-size:18px;width:50%;}
.infoBox .nickBox p {margin-bottom:5px; display:inline-block;}
.infoBox .nickBox input[type="text"] {display: block;width:50%;}
.mailList{font-size:18px;padding: 5px 0px 5px 0px;width:20%;}
.littleFont{font-size:13px;margin-left:10px; color:#4a4747}
.joinButton{text-align:center;}
.joinButton input[type="submit"]{font-size:16px;color:white;padding: 10px 50px;background: #1CD8A9;border: 1px solid #1CD8A9; border-radius: 5px;}
</style>
<script type="text/javascript">
$(function(){
	agreeCheckBox();
	mailSelect();
});//document.ready

/**
 * 약관 전체 동의 체크박스 
 **/
function agreeCheckBox(){
	var $allCheck = $('#allCheck');
	$allCheck.change(function () {
	    var $this = $(this);
	    var checked = $this.prop('checked'); // checked 문자열 참조(true, false)
	    // console.log(checked);
	    $('input[name="chk"]').prop('checked', checked);

	});

	var boxes = $('input[name="sports"]');
	boxes.change(function () {
	   
	    var boxLength = boxes.length;
	    // 체크된 체크박스 갯수를 확인용 :checked 필터를 사용하여 체크박스만 선택한 후 length 프로퍼티를 확인
	    var checkedLength = $('input[name="chk"]:checked').length;
	    var selectAll = (boxLength == checkedLength);

	    $allCheck.prop('checked', selectAll);
	});

}//function

/*이메일 뒷자리*/
function mailSelect(){
$("#mailSelect").change(function(){
	$("#mail").val($("#mailSelect").val());
});

}
</script>
</head>
<body>
<c:import url="../common/header.jsp"/>
<div class="whiteBox"></div>
<div class="main">
<form method="post" action="userJoinSuccess.do">
	<!-- Title -->
	<div >
		<h3 class="joinTitle">회원가입</h3>
	</div>
	
	<!-- 약관동의 -->
	<div class="agreeMainBox">
		<h4 class="agreeFont">약관동의</h4>
		
		<div class="agreeBox">
			<ul>
				<li><input type="checkBox" id="allCheck"/><p>전체동의</p></li>
				<li class="agreeLine"></li>
				<li><input type="checkBox" name="chk"/><p>만 14세 이상입니다.</p><p class="pil">(필수)</p></li>
				<li><input type="checkBox" name="chk"/><p>이용약관</p><p class="pil">(필수)</p></li>
				<li><input type="checkBox" name="chk"/><p>개인정보취급방침</p><p class="pil">(필수)</p></li>
				<li><input type="checkBox" name="chk"/><p>이벤트, 프로모션 알림 메일 및 SNS수신</p><p class="pil">(필수)</p></li>
			</ul>
		</div>
		
		<!-- SNS계정으로 간편하게 회원가입 -->
		<div class="snsJoinBox">
				<p class="snsJoinFont">SNS로 간편하게 회원가입</p>
			<ul>
				<li>구글</li>
				<li>네이버</li>
				<li>카카오톡</li>
			</ul>
		</div>
	
		<div><p  class="line"></p></div>
	</div>
	
	<!-- 회원가입정보 -->
	<div class="infoBox">
		<div>
			<p>이름</p>
			<input type="text"/>
		</div>
		
		<div>
			<p>이메일</p>
			<input type="text" id="mailId"name="mailId"/> @ <input type="text" id="mail" name="mail"/>
			<select id="mailSelect" class="mailList">
				<option value="">직접입력</option>
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanmail.net">hanmail.net</option>
			</select>
		</div>
		
		<div>
			<p>전화번호</p>
			<input type="text" name="phone1"/>
			<input type="text" name="phone2"/>
			<input type="text" name="phone3"/>
			<button>인증</button>
		</div>
		
		<div class="passwordBox">
			<p>비밀번호</p><p class="littleFont">8자 이상 영문 대 소문자, 숫자, 특수문자 사용</p>
			<input type="text" name="pwd1"/>
		</div>
		
		<div class="passwordBox">
			<p>비밀번호확인</p><p class="littleFont">상단의 비밀번호와 내용이 일치해야 합니다.</p>
			<input type="text" name="pwd2"/>
		</div>
		
		<div class="nickBox">
			<p>닉네임</p><p class="littleFont">다른 유저와 겹치지 않는 닉네임을 입력해주세요(2자~15자)</p>
			<input type="text" name="nickname"/>
		</div>
		
		<div>
		API사용
		</div>
	</div>
	
		<div class="joinButton">
			<input type="submit" value="회원가입하기" />
		</div>
		
		<div class="line"></div>
</form>	
</div>
<c:import url="../common/footer.jsp"/>
</body>
</html>