<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<title>나의예약현황</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../resources/js/reserve.js"></script>
	<link rel="stylesheet" href="/shilla/resources/css/reset.css">
	<link rel="stylesheet" href="/shilla/resources/css/header.css">
	<link rel="stylesheet" href="/shilla/resources/css/payment.css">
	<link rel="stylesheet" href="/shilla/resources/css/footer.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous"
	 referrerpolicy="no-referrer" />
	 	<!-- 구글 앱 폰트 적용 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@400;700;800&display=swap" rel="stylesheet">
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
			<h1><%=id %> 님의 객실목록</h1>
			<hr style="border: 2px solid #856f56; ">
			<div class="table_rs-wrap">
				<table class="table_rs">
					<tr>
						<th>객실명</th>
						<th>체크인</th>
						<th>체크아웃</th>
						<th>결제금액</th>
						<th>결제여부</th>
						<th>선택</th>
					</tr>
					<c:forEach var="list" items="${detail }">
					
					<tr>
						<td>${list.type }</td>
						<td>${list.date_in }</td>
						<td>${list.date_out }</td>
						<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.cash }" /></td>
						<td>${list.payment }</td>
						<td>
<!-- 						<form name="myForm" method="get"> -->
<%-- 						<input type="hidden" name="Rsv_idx" value="${list.rsv_idx}"> --%>
<%-- 						<input type="hidden" name="id" value="${list.id}"> --%>
<%-- 						<input type="hidden" name="item_name" value="${list.type}"> --%>
<%-- 						<input type="hidden" name="total_amount" value="${list.cash}"> --%>
						<c:set var="pay_or_not" value="${list.payment }" />
							<c:choose>
							    <c:when test="${pay_or_not eq '결제완료'}">
								    <form action="/shilla/review/create" method="get">
									<input type="hidden" name="rsv_idx" value="${list.rsv_idx}">
							    	<input type=submit value="리뷰쓰기">
							    	</form>
<!-- 							        <button type="button" onclick="mySubmit(2)">리뷰쓰기</button> -->
							    </c:when>
							    <c:otherwise>
							    	<form action="/shilla/reservation/Reservation_step2" method="get">
									<input type="hidden" name="rsv_idx" value="${list.rsv_idx}">
							    	<input type=submit value="결제&취소">
							    	</form>
<!-- 							        <button type="button" onclick="mySubmit(1)">결제&취소</button> -->
							    </c:otherwise>
							</c:choose>
<!-- 						</form> -->
						</td>
					</tr>
					
					</c:forEach>
				</table>
				<div class="pay_count">
				</div>
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
<script>
		function mySubmit(index){
			if(index == 1) {
				document.myForm.action="/shilla/reservation/Reservation_step2";
				document.myForm.submit();
			} else {
				document.myForm.action="/shilla/review/create";
				document.myForm.submit();
			}
			
		}
		
// 		$(function(){
// 			$('#apibtn').click(function(){
// 				 $.ajax({
// 					url: '/kakaoPay' ,
// 			        dataType: 'json' ,
// 			        success: function(data){
// 			        	var box = data.next_redirect_pc_url;
// 			        	location.href = box;
// 			        } , 
// 			     	error: function(error){
			     		
// 			     		alert(error);
// 			     		alert("error");
// 		     		}   
// 		     	});
// 			});
// 		});
		
		$('#apibtn').click(function(){
			var IMP = window.IMP; // 생략가능
			var rsv_idx = document.getElementById("rsv_idx").value;
			var mem_id = document.getElementById("id").value;
			var item_name = document.getElementById("item_name").value;
			var total_amount = document.getElementById("total_amount").value;
			IMP.init('imp02494686'); 
			IMP.request_pay({
				pg: 'kakao',
				pay_method: 'card',
				merchant_uid: 'merchant_' + new Date().getTime() + rsv_idx,
				name: '주문명 : ' + item_name,
				amount: + total_amount,
				buyer_name: '주문자 Id' + mem_id,
				buyer_postcode: '123-456',
				}, function (rsp) {
					console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '결제 금액 : ' + rsp.paid_amount;
					
					document.myForm.action="/shilla/reservation/payOk"
					document.myForm.submit();
					
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
				}
				
				alert(msg);
			});
		});
	</script>
</body>
</html>
