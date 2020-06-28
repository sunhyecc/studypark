<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="resources/css/common/myCategory.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="resources/js/common/myCategory.js"></script>
</head>
<body>
	<div id="myCategoryMain">
	<div class="whiteBox"></div>
	<div class="hrLine"></div>
	<div class="myCategoryBox">
	 	<nav id="myCategoryNav">
			<ul id="myCategoryUl" class="myCategoryUl">
				<li><a class="liA" id="profile" href="javascript:getProfileList();" style="color:#1CD8A9;">프로필</a></li>
				<li><a class="liA" id="myShopping" href="#">나의쇼핑</a></li>
				<li><a class="liA" id="review"href="#">리뷰</a></li>
				<li><a class="liA" id="establish" href="#">설정</a></li>
			</ul>
	 	</nav>
	</div>
			<div id="menu1">
				<div class='profileBox' id="profileBox">
				 <nav id='profileNav'>
				  <ul id='profileUl' class='profileUl'>
					  <li><a class='profileLiA' id='all'     href="javascript:get();" style="color:#1CD8A9;">모두보기</a></li>
					  <li><a class='profileLiA' id='myWrite' href='#'>내가 작성한 글</a></li>
					  <li><a class='profileLiA' id='like'    href='#'>좋아요</a></li>
					  <li><a class='profileLiA' id='scrap'   href='#'>스크랩북</a></li>
					  <li><a class='profileLiA' id='attendanceChk'   href='#'>출석체크</a></li>
					  <li><a class='profileLiA' id='FAQ'   href='#'>질문&답변</a></li>
				 </ul>
				</nav>
			   </div>
		   </div>
		   <div id="menu2"></div>

	</div>
</body>
</html>