<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 라이브러리 외부CDN추가 -->
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<!-- 부트스트랩 달력2 시작 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.js"></script>
	<style>
		.content_wrap1 div div ul li {margin-bottom:20px;}
		.content_wrap1 div div ul li a {display:block; width:200px; }
		.content_wrap1 div div ul li a:hover {text-decoration: none; color:#4d3f30;}
		.content_wrap1 div div div h3 {font-size:23px; font-weight: 600; margin: 15px 0;}
		.content_wrap1 div div div p {line-height: 2;}

	</style>
	<!-- 부트스트랩 달력1 끝 -->
	<script src="resources/js/reserve.js"></script>
	<link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="resources/css/header.css">
	<link rel="stylesheet" href="resources/css/reserve.css">
	<link rel="stylesheet" href="resources/css/date.css">
	<link rel="stylesheet" href="resources/css/footer.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous"
	 referrerpolicy="no-referrer" />
</head>
<body>
<!-- header 시작 -->
<div class="header-wrap">
	<header>
		
		<% 
// 		String id = (String)request.getAttribute("id");
		String id = request.getParameter("id");
		
		if(id == null) {
		%>
		<div class="rt_gnb">
			<span><a href="/shilla/member/login">로그인 &nbsp; |</a></span>
			<span><a href="/shilla/member/join">&nbsp;신라리워드가입</a></span>
			</div>
		<div class="ct_gnb">
			<a href="/shilla/"><img src="/shilla/resources/img/logo.gif" alt="신라호텔로고"></a>
		</div>
		<nav class="lb_gnb">
			<ul>
				<li><a href="/shilla/member/login">예약확인</a></li>
				<li><a href="/shilla/member/login">예약</a></li>
			</ul>
		</nav>

		<nav class="rb_gnb">
			<ul>
				<li><a href="/shilla/info_about">신라호텔소개</a></li>
				<li><a href="/shilla/review/list">이용후기</a></li>
			</ul>
		</nav>
		<% } else { %>
		<div class="rt_gnb">
	    	<span><b><%=id %></b>님 &nbsp; |</span>
	        <span><a href="/shilla/member/logout">&nbsp;로그아웃 &nbsp; |</a></span>   
	         <span><a href="/shilla/member/update?id=<%=id %>">&nbsp;회원정보수정</a></span>
	         </div>
	         
		<div class="ct_gnb">
			<a href="/shilla/?id=<%=id%>"><img src="/shilla/resources/img/logo.gif" alt="신라호텔로고"></a>
		</div>
		<nav class="lb_gnb">
			<ul>
				<li><a href="/shilla/reservation/my_room?id=<%=id%>">예약확인</a></li>
				<li><a href="/shilla/reservation/list?id=<%=id %>">예약</a></li>
			</ul>
		</nav>

		<nav class="rb_gnb">
			<ul>
				<li><a href="/shilla/info_about?id=<%=id %>">신라호텔소개</a></li>
				<li><a href="/shilla/review/list?id=<%=id %>">이용후기</a></li>
			</ul>
		</nav>
	   <% } %>
	</header>
</div>
<!-- header 끝 -->
	<main>
		<section class="content_wrap1">
			<div style="display: flex;">
				<div style="width:40%; height:500px; background-color:#f1e3c4; margin-right: 20px;">
						<h1 style="margin: 30px 0 5px 30px; font-weight:600; font-size:18px;">호텔신라소개</h1>
						<hr style="width:200px; border: 2px solid #856f56; ">
						<ul style="width:250px; color:#4d3f30; padding:30px; font-weight: 600; line-height: 40px;">
							<li><a href="#" id="one" onclick="clickOption(1)" style="background-color: #bbaf95;">&nbsp;&nbsp;개요</a></li>
							<li><a href="#" id="two" onclick="clickOption(2)">&nbsp;&nbsp;Member Exclusive</a></li>
							<li><a href="#" id="three" onclick="clickOption(3)">&nbsp;&nbsp;Urban Island</a></li>
							<li><a href="#" id="four" onclick="clickOption(4)">&nbsp;&nbsp;Morning Delights</a></li>
							<li><a href="#" id="five" onclick="clickOption(5)">&nbsp;&nbsp;Suite</a></li>
							<li><a href="#" id="six" onclick="clickOption(6)">&nbsp;&nbsp;Room Delights</a></li>
						</ul>
				</div>
				<div sytle="width:60%; margin: 60px;">
<!-- 					<h1 style="margin-left:10px; margin-bottom: 20px; font-size:25px;">개요</h1> -->
<!-- 					<hr style="border: 2px solid #856f56; "> -->
					<div class="room_select">
						<img id="one_img" src="resources/img/shillaInfo1-1.png" alt="">
						<img id="two_img" src="resources/img/shillaInfo2-1.png" style="display:none;" alt="">
						<img id="three_img" src="resources/img/shillaInfo3-1.png" style="display:none;" alt="">
						<img id="four_img" src="resources/img/shillaInfo4-1.png" style="display:none;" alt="">
						<img id="five_img" src="resources/img/shillaInfo5-1.png" style="display:none;" alt="">
						<img id="six_img" src="resources/img/shillaInfo6-1.png" style="display:none;" alt="">

						<script>
							var one = document.getElementById("one");
							var two = document.getElementById("two");
							var three = document.getElementById("three");
							var four = document.getElementById("four");
							var five = document.getElementById("five");
							var six = document.getElementById("six");

							var one_img = document.getElementById("one_img");
							var two_img = document.getElementById("two_img");
							var three_img = document.getElementById("three_img");
							var four_img = document.getElementById("four_img");
							var five_img = document.getElementById("five_img");
							var six_img = document.getElementById("six_img");

							function clickOption(index){
								if(index == 1){
									one.style.backgroundColor = "#bbaf95";
									two.style.backgroundColor = "#f1e3c4";
									three.style.backgroundColor = "#f1e3c4";
									four.style.backgroundColor = "#f1e3c4";
									five.style.backgroundColor = "#f1e3c4";
									six.style.backgroundColor = "#f1e3c4";
									one_img.style.display = "block";
									two_img.style.display = "none";
									three_img.style.display = "none";
									four_img.style.display = "none";
									five_img.style.display = "none";
									six_img.style.display = "none";
								} else if(index ==2) {
									one.style.backgroundColor = "#f1e3c4";
									two.style.backgroundColor = "#bbaf95";
									three.style.backgroundColor = "#f1e3c4";
									four.style.backgroundColor = "#f1e3c4";
									five.style.backgroundColor = "#f1e3c4";
									six.style.backgroundColor = "#f1e3c4";
									one_img.style.display = "none";
									two_img.style.display = "block";
									three_img.style.display = "none";
									four_img.style.display = "none";
									five_img.style.display = "none";
									six_img.style.display = "none";
								} else if(index ==3) {
									one.style.backgroundColor = "#f1e3c4";
									two.style.backgroundColor = "#f1e3c4";
									three.style.backgroundColor = "#bbaf95";
									four.style.backgroundColor = "#f1e3c4";
									five.style.backgroundColor = "#f1e3c4";
									six.style.backgroundColor = "#f1e3c4";
									one_img.style.display = "none";
									two_img.style.display = "none";
									three_img.style.display = "block";
									four_img.style.display = "none";
									five_img.style.display = "none";
									six_img.style.display = "none";
								} else if(index ==4) {
									one.style.backgroundColor = "#f1e3c4";
									two.style.backgroundColor = "#f1e3c4";
									three.style.backgroundColor = "#f1e3c4";
									four.style.backgroundColor = "#bbaf95";
									five.style.backgroundColor = "#f1e3c4";
									six.style.backgroundColor = "#f1e3c4";
									one_img.style.display = "none";
									two_img.style.display = "none";
									three_img.style.display = "none";
									four_img.style.display = "block";
									five_img.style.display = "none";
									six_img.style.display = "none";
								} else if(index ==5) {
									one.style.backgroundColor = "#f1e3c4";
									two.style.backgroundColor = "#f1e3c4";
									three.style.backgroundColor = "#f1e3c4";
									four.style.backgroundColor = "#f1e3c4";
									five.style.backgroundColor = "#bbaf95";
									six.style.backgroundColor = "#f1e3c4";
									one_img.style.display = "none";
									two_img.style.display = "none";
									three_img.style.display = "none";
									four_img.style.display = "none";
									five_img.style.display = "block";
									six_img.style.display = "none";
								} else {
									one.style.backgroundColor = "#f1e3c4";
									two.style.backgroundColor = "#f1e3c4";
									three.style.backgroundColor = "#f1e3c4";
									four.style.backgroundColor = "#f1e3c4";
									five.style.backgroundColor = "#f1e3c4";
									six.style.backgroundColor = "#bbaf95";
									one_img.style.display = "none";
									two_img.style.display = "none";
									three_img.style.display = "none";
									four_img.style.display = "none";
									five_img.style.display = "none";
									six_img.style.display = "block";
								}
							}

						</script>

					</div>
				</div>
			</div>
		</section>
		<!-- content_wrap1 끝 -->

		<!-- footer 시작 -->
		<div class="info_wrap">
			<div class="info_main">
				<h3><img src="resources/img/localBoxCompInfo.gif" alt="신라인포로고"></h3>
				<div class="info_content1">
					<ul>
						<li class="brand"><a href="#">The Shilla</a></li>
						<li class="mono"><a href="#">Shilla Monogra</a></li>
						<li class="stay"><a href="#">Shilla Stay</a></li>
					</ul>
				</div>
				<div class="info_content2">
					<div class="num">
						<div class="num1">
						</div>

					</div>
					<div class="map">
						<div class="map_img">
							<dl class="map_float">
								<dd><a href="#">호텔신라소개</a></dd>
							</dl>
							<dl class="map_float">
								<dd><a href="#">고객문의</a></dd>
							</dl>
							<dl>
								<dd><a href="#">사이트맵</a></dd>
							</dl>
							<dl class="map_float map_margin">
								<dd><a href="#">The Shilla shop</a></dd>
							</dl>
							<dl class="map_margin">
								<dd><a href="#">삼성상품권</a></dd>
							</dl>
						</div>
					</div>
					<div class="sns">
						<h2 class="sns_title">제목</h2>
						<dl>
							<a href="#">
								<dt class="face">페이스북</dt>
							</a>
							<a href="#">
								<dt class="ins">인스타그램</dt>
							</a>
							<a href="#">
								<dt class="wei">웨이보</dt>
							</a>
						</dl>
					</div>
				</div>
			</div>
		</div>

		<div class="footer_main">
			<div class="footer_content1">
				<ul class="content1_img">
					<li><a href="#">신라리워즈 약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">이메일무단수집금지</a></li>
					<li><a href="#">윤리경영(부정제보)</a></li>
				</ul>
			</div>
			<div class="footer_content2">
				<ul class="content2_img">
					<li><a href="#">한국어</a></li>
					<li><a href="#">ENGLISH</a></li>
					<li><a href="#">日本語</a></li>
					<li><a href="#">简体中文</a></li>
				</ul>
			</div>
			<div class="footer_content3">
				<p>㈜호텔신라 서울특별시 중구 동호로 249 (우: 04605) Tel: 02-2233-3131 Fax: 02-2230-3769 사업자등록번호: 203-81-43363 통신판매신고번호:
					중구00272호 대표이사 이부진 호스팅서비스제공자 삼성SDS㈜ 서울객실예약 shilla.reserve@samsung.com 제주객실예약 jejushilla@samsung.com</p>
				<p class="footer_content3_p"><a href="#"><img src="/resources/img/footLinkbtn.gif" alt="사업자정보확인"></a></p>
			</div>
		</div>


		<!-- footer 끝 -->




	</main>
</body>
</html>