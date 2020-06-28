<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/common/header.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="headerMain">
<c:if test="${sessionScope.loginMember eq null}">
	<nav id="menu">
		<ul id="menuul">
			<li id="studypark"><a href="/studypark">STUDYPARK</a></li>
			<li id="community"><a href="#">커뮤니티</a></li>
			<li id="store"><a href="#">스토어</a></li>
			<li id="search"><input class="search_text" type="text"></li>
			<li id="write"><a href="#">글쓰기</a></li>
			<li id="cart"><a href="#"><img class="cart" src="resources/image/common/header/cart.png"></a></li>
			<li id="login"><a href="login.do">로그인 </a></li>
			<li id="p"><p>｜</p></li>
			<li id="join"><a href="userJoin.do">회원가입</a></li>
		</ul>
	</nav>
</c:if>
<c:if test="${sessionScope.loginMember != null}">
	<nav id="menu">
		<ul id="menuul">
			<li id="studypark"><a href="/studypark">STUDYPARK</a></li>
			<li id="community"><a href="#">커뮤니티</a></li>
			<li id="store"><a href="#">스토어</a></li>
			<li id="search"><input class="search_text" type="text"></li>
			<li id="write"><a href="#">글쓰기</a></li>
			<li id="cart"><a href="#"><img class="cart" src="resources/image/common/header/cart.png"></a></li>
			<li id="login"><a href="logout.do">로그아웃</a></li>
			<li id="p"><p>｜</p></li>
			<li id="join"><a href="myPage.do">Mypage</a></li>
		</ul>
	</nav>
</c:if>

</div>
</body>
</html>