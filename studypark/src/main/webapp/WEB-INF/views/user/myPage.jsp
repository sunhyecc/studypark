<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudyPark 마이페이지 입니다.</title>
<link href="resources/css/user/myPage.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="resources/js/user/myPage.js"></script>
</head>
<body>
<c:import url="../common/header.jsp"/>
<c:import url="../common/myCategory.jsp"/>
<div class="main">
		
	<form action="login.do" method="post" accept-charset="UTF-8">
	<div class="whiteBox"></div>
	
		<div id="myProfile" class="myProfileBox">
			<div id="myphoto" class="myPhoto"></div>
			
			<div class="nickNameBox">
				<p class="myPageNickName">닉네임</p>
			</div>
			
			<div id="followBox" class="followBox">
				<p>팔로워</p>
				<p>팔로잉</p>
			</div>
			
			<div id="menuBox" class="menuBox">
				<p>스크랩북</p>
				<p>좋아요</p>
				<p>출석체크</p>
			</div>			
			
			<div id="likeListBox" class="likeListBox">
				<p>좋아요 목록</p>
				<div id="likeList" class="likeList">
					<p>좋아요가 없습니다.</p>
				</div>
			</div>
		</div>
	
	<div class="whiteBox"></div>
	</form>
</div>
<c:import url="../common/footer.jsp"/>
</body>
</html>