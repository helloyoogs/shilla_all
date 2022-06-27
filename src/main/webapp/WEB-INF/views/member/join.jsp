<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<!-- 제이쿼리 라이브러리 외부CDN추가 -->
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet" href="/shilla/resources/css/reset.css?after">
	<link rel="stylesheet" href="/shilla/resources/css/header.css?after">
	<link rel="stylesheet" href="/shilla/resources/css/join.css?after">
	<link rel="stylesheet" href="/shilla/resources/css/footer.css?after">
	<link rel="stylesheet" href="/shilla/resources/js/join.js">
	<script src="/shilla/resources/js/join.js"></script>
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
				<h1>이용후기</h1>
			<hr style="border: 2px solid #856f56; ">
			<div class="log1">
				<form method="POST" id="join_form">
				<label for="id">ID</label>
				<input type="text" name="id" placeholder="id" id="id"  minlength="6" maxlength="12"> <br>
				<label for="pw">PASSWORD</label>
				<input type="password" name="pw" placeholder="pw" id="pw" minlength="6" maxlength="12">
				<label for="name">NAME</label>
				<input type="text" name="name" placeholder="name" id="name">
				<label for="age">AGE</label>
				<input type="number" name="age" placeholder="age" id="age">
				<label for="email">EMAIL</label>
				<input type="email" name="email" placeholder="email" id="email">
				<label for="phone">PHONE</label>
				<input type="tel" name="phone" placeholder="phone" id="phone">
				<label for="address">ADDRESS</label>
				<input type="text" name="address" placeholder="address" id="address">
				<label for="log_btn" style="opacity:0;">회원가입</label>
				<input type="submit" value="회원가입" id="join_btn">
				</form>
			</div>
		</section>
		<!-- content_wrap1 끝 -->

	<!-- footer 시작 -->
		<div class="info_wrap">
			<div class="info_main">
				<h3><img src="/shilla/resources/img/localBoxCompInfo.gif" alt="신라인포로고"></h3>
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
				<p class="footer_content3_p"><a href="#"><img src="/shilla/resources/img/footLinkbtn.gif" alt="사업자정보확인"></a></p>
			</div>
		</div>


		<!-- footer 끝 -->




	</main>
</body>

</html>
