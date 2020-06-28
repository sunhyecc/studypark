<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudyPark 회원가입을 해주세요^-^</title>
<link href="resources/css/user/userJoin.css" rel="stylesheet" type="text/css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="resources/js/user/userJoin.js"></script>
</head>
<body>

<c:import url="../common/header.jsp"/>
<div class="whiteBox"></div>
<div class="main">
<form method="post" action="userJoinSuccess.do" id="joinForm" accept-charset="UTF-8">
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
		<div class="nameBox">
			<p>이름</p>
			<input type="text" name="name"/>
		</div>
		
		<div class="mailBox">
			<p>이메일</p>
			<input type="text" id="mailId"name="mailId"/> @ <input type="text" id="mail" name="mail"/>
			<select id="mailSelect" class="mailList">
				<option value="">직접입력</option>
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanmail.net">hanmail.net</option>
			</select>
		</div>
		
		<div class="phoneBox">
			<p>전화번호</p>
			<input type="text" name="phone1"/>
			<input type="text" name="phone2"/>
			<input type="text" name="phone3"/>
			<button>인증</button>
		</div>
		
		<div class="passwordBox">
			<p>비밀번호</p><p class="littleFont">8자 이상 영문 대 소문자, 숫자, 특수문자 사용</p>
			<input id="pwd1" type="text" name="password"/>
		</div>
		
		<div class="passwordBox">
			<p>비밀번호확인</p><p class="littleFont">상단의 비밀번호와 내용이 일치해야 합니다.</p>
			<input id="pwd2" type="text"/>
		</div>
		
		<div class="nickBox">
			<p>닉네임</p><p class="littleFont">다른 유저와 겹치지 않는 닉네임을 입력해주세요(2자~15자)</p>
			<input type="text" name="nickName"/>
		</div>
		
		<div class="addressBox">
			<p>우편번호</p>
				<input name="zipcode" class="zipcode" type="text" id="sample4_postcode" placeholder="우편번호">
				<input class="addressBt" type="button" onclick="daumAddress();" value="우편번호 찾기"><br>
				<input name="address1" class="doro" type="text" id="sample4_roadAddress" placeholder="도로명주소">
				<input name="branchAddress" class="jibun"type="text" id="sample4_jibunAddress" placeholder="지번주소">
				<span  id="guide"></span><br>
				<input name="address2" class="detailAdd" type="text" id="sample4_detailAddress" placeholder="상세주소">
				<input name="plusAddressInfo" class="plusInfo"type="text" id="sample4_extraAddress" placeholder="참고항목">
		</div>
	</div>
	
		<div class="joinButton">
			<input type="button" id="joinSuccessBtn" value="회원가입하기">
		</div>
		
		<div class="line"></div>
</form>	
</div>
<c:import url="../common/footer.jsp"/>
</body>
</html>