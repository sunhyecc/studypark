<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>스터디파크에 오신걸 환영합니다.</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>
<style>
#main    { width:60%; margin:0 auto; }
.menu1   { display:inline-block; margin-top:150px; margin-top:150px; margin-left:80px; }
.main1_1 { display:inline-block; position:relative; }
.slider  { display:inline-block; }
.mainimg1{ display:inline-block; }
.mainimg2{ display:inline-block; } 
	  li { list-style:none; }
.menu2		  		  { text-align:center; } 
.menu2 > ul > li	  { display:inline-block; margin: 0px 10px 20px 10px; }
.menu2 > ul > li > p  { font-size:13px; font-weight: bolder; }
.menu2 > ul > li > div{ width: 100px; height: 100px; border-radius: 50px; 
					    background: #9e9e9e38; margin-bottom: 10px;}
/*.bx-wrapper :  제이쿼리 css소스*/
.bx-wrapper    { display:inline-block; margin-left:30px; border-radius:5px; }
.img1_textbox  { left:20px; width:610px; bottom:20px; font-size:1.8em;
		 	   font-weight:bold; position:absolute; color:white; }
.img1_click    { border-radius:5px; border-radius:5px; color:white; 
    	 	   border:2.5px solid white; float:right; font-size:large; 
    		   padding:10px; font-weight:bold; }
.img1_text_id  { display:inline-block; font-size:20px; margin-top:10px; }
.img1_click	   { display:inline-block; }

.profile_circle{ background-color:white; width:40px; height:40px;
	   			 border-radius:50px; display:inline-block; }
</style>


<script type="text/javascript">

$(document).ready(function(){
	$('.slider').bxSlider({
        auto: true, // 자동으로 애니메이션 시작
        speed: 500,  // 애니메이션 속도
        pause: 5000,  // 애니메이션 유지 시간 (1000은 1초)
        mode: 'horizontal', // 슬라이드 모드 ('fade', 'horizontal', 'vertical' 이 있음)
        pager: true, // 페이지 표시 보여짐
        slideWidth: 300, //사이즈조절
        captions: true, // 이미지 위에 텍스트를 넣을 수 있음
    });

});
</script>


<c:import url="common/header.jsp"/>


<body>
<div id="main">
	
	<div class="menu1">
		
		<div class="main1_1">
		<img class="mainimg1" src="resources/image/home/book.jpg">
			<div class="img1_textbox">	
	 			<p class="img1_text1">끊임없이 계속 읽었습니다.</p>
	 			<p class="img1_text2">서울대! 갈 수 있어! </p>
	 			<div class="id_go">
	 			<div class="profile_circle"></div>
	 			<p class="img1_text_id">나서울</p>		 			
				<a href="#" class="img1_click">보러가기</a>
				</div>
			</div>
	

		</div>
			<div class="slider">			
				<img class="mainimg2" src="resources/image/home/slide.jpg">
				<img class="mainimg2" src="resources/image/home/slide.jpg">
				<img class="mainimg2" src="resources/image/home/slide.jpg">		
		</div>
	</div>
	
	<div class="menu2">
		<ul>
		 <li><div></div><p>책상구경</p></li>
		 <li><div></div><p>쇼핑하기</p></li>
		 <li><div></div><p>공부방법</p></li>
		 <li><div></div><p>독서실 찾기</p></li>
		 <li><div></div><p>커뮤니티</p></li>
		 <li><div></div><p>질문과 답변</p></li>
		 <li><div></div><p>Study With Me</p></li>
		</ul>
	</div>
	
	<div class="menu3">
		<ul>
			<li><a></a></li>
			<li><a></a></li>
			<li><a></a></li>
			<li><a></a></li>
			<li><a></a></li>
			<li><a></a></li>
			<li><a></a></li>
		</ul>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
</div><!-- id : main  -->
<c:import url="common/footer.jsp"/>
</body>
</html>
