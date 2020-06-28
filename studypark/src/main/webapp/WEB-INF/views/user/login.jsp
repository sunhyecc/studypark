<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudyPark 로그인페이지 입니다.</title>
<link href="resources/css/user/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="resources/js/user/login.js"></script>
</head>
<body>
<c:import url="../common/header.jsp"/>
<div class="main">

	<form action="login.do" method="post" accept-charset="UTF-8">
	<div class="whiteBox"></div>
	<div class="mainLoginBox">
		<div class="loginBox">
			<p class="loginLogo">STUDYPARK</p>
			<input name="studyParkId" id="studyParkId" class="idBox" type="text" placeholder="휴대폰번호 또는 이메일주소"/>
			<input name="studyParkPwd" id="studyParkPwd" class="pwdBox" type="text"  placeholder="비밀번호 입력"/>
			<input class="loginBtn" id="loginBtn" type="submit" value="로그인" />
		</div>
	</div>
	
	
	<div class="whiteBox"></div>
	</form>
</div>
<c:import url="../common/footer.jsp"/>
</body>
</html>