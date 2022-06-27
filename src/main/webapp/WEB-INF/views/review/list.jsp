<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용 후기 목록</title>
<!-- 제이쿼리 라이브러리 외부CDN추가 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<!-- 구글 앱 폰트 적용 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@400;700;800&display=swap" rel="stylesheet">
<!-- 부트스트랩 달력2 시작 -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.js"></script>
	
	<link rel="stylesheet" href="/shilla/resources/css/reset.css?after">
	<link rel="stylesheet" href="/shilla/resources/css/header.css?after">
	<link rel="stylesheet" href="/shilla/resources/css/review_list.css?after">
	<link rel="stylesheet" href="/shilla/resources/css/footer.css?after">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous"
	 referrerpolicy="no-referrer" />
	 
	<script type="text/javascript">
 $(document).ready(function(){
	var $setRows = $('#setRows');

	$setRows
			.submit(function(e) {
				e.preventDefault();
				var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환

				//    console.log(typeof rowPerPage);

				var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
				if (!rowPerPage) {
					alert(zeroWarning);
					return;
				}
				$('#nav').remove();
				var $products = $('#products');

				$products.after('<div id="nav">');

				var $li = $($products).find('li');
				var rowTotals = $li.length;
				//  console.log(rowTotals);

				var pageTotal = Math.ceil(rowTotals / rowPerPage);
				var i = 0;

				for (; i < pageTotal; i++) {
					$('<a href="#"></a>').attr('rel', i).html(i + 1).appendTo(
							'#nav');
				}

				$li.addClass('off-screen').slice(0, rowPerPage).removeClass(
						'off-screen');

				var $pagingLink = $('#nav a');
				$pagingLink.on('click', function(evt) {
					evt.preventDefault();
					var $this = $(this);
					if ($this.hasClass('active')) {
						return;
					}
					$pagingLink.removeClass('active');
					$this.addClass('active');

					// 0 => 0(0*4), 4(0*4+4)
					// 1 => 4(1*4), 8(1*4+4)
					// 2 => 8(2*4), 12(2*4+4)
					// 시작 행 = 페이지 번호 * 페이지당 행수
					// 끝 행 = 시작 행 + 페이지당 행수

					var currPage = $this.attr('rel');
					var startItem = currPage * rowPerPage;
					var endItem = startItem + rowPerPage;

					$li.css('opacity', '0.0').addClass('off-screen').slice(
							startItem, endItem).removeClass('off-screen')
							.animate({
								opacity : 1
							}, 300);

				});

				$pagingLink.filter(':first').addClass('active');

			});

	$setRows.submit();
 });
</script> 
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
<!-- 			<p> -->
<!-- 			<form> -->
<!-- 				아무것도 안 넣음. 어차피 자기 자신으로 그대로 올거니까. -->
<!-- 				placeholder input태그에 기본으로 연하게 적힌 값 -->
<%-- 				<input type="text" placeholder="검색" name="keyword" value="${keyword}" /> --%>
<!-- 				<input type="submit" value="검색" /> -->
<!-- 			</form> -->
<!-- 			</p> -->
			<h1>이용후기</h1>
			<hr style="border: 2px solid #856f56; ">
			<div class="room_select">
				<ul id="products">
				<form action="" id="setRows" style="display:none;">
				<p>
					showing <input type="text" name="rowPerPage" value="3"> item
					per page
				</p>
				</form>
				<c:forEach var="row" items="${data}">
					<li>
						<div class="select_flex" style="height:250px;">
							<div class="select1" style="margin:15px; line-height:23px; width:20%; height:100%;">
								<p style="color:rgb(59, 134, 231); font-size: 30px; margin-bottom: 15px; margin-top: 15px;"><fmt:formatNumber type="number" pattern=".0"
							value="${row.room_rating}" /><p>
								<p>${row.id}님의 후기<p>
								<p>${row.type }<p>
								<p>${row.date_in} 입실<p>
							</div>
							<div class="select2" style="padding:25px; line-height:15px; width:80%; height:100%; background-color: #f5f5f5; border-radius: 15px;">
								<p style="height:30px; font-size: 24px; margin-bottom: 15px; font-weight: 600;">"${row.review_title}"</p>
								<p style="height:100px;">${row.review_content }</p>
								<p style="color:gray;"><fmt:formatDate value="${row.review_date}"
							pattern="yyyy.MM.dd" /> 작성</p>
							</div>
						</div>
					</li>
				</c:forEach>
				</ul>
			</div>
		</section>


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



