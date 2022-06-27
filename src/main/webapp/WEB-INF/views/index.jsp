<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>the_shilla</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  <!-- 제이쿼리 라이브러리 외부CDN추가 -->
  <script src="https://code.jquery.com/jquery-latest.min.js"></script>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/header.css">
  <link rel="stylesheet" href="resources/css/index.css">
  <link rel="stylesheet" href="resources/css/footer.css">
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
    <!-- 배너 영역 시작 -->
    <content class='col-md-12' style=padding:0px;>
      <!-- 캐러셀 추가 -->
      <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active" data-bs-interval="2000">
            <img src="resources/img/banner1.jpg" class="d-block w-100 img-fluid" alt="...">
          </div>
          <div class="carousel-item" data-bs-interval="2000">
            <img src="resources/img/banner2.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </content>
    <!-- 배너 영역 끝 -->

    <section class="content_wrap1">
      <!-- 호텔예약테이블 시작 -->
<!--       <div class="table_rs-wrap"> -->
<!--         <table class="table_rs"> -->
<!--           <tr> -->
<!--             <th>호텔 또는 도시</th> -->
<!--             <th>체크인</th> -->
<!--             <th>체크아웃</th> -->
<!--             <th>객실</th> -->
<!--             <th>성인</th> -->

<!--             <th>어린이</th> -->
<!--             <th>유아</th> -->
<!--           </tr> -->
<!--           <tr> -->
<!--             <td>호텔을 선택해주세요.</td> -->
<!--             <td>2022.01.06 (목)</td> -->
<!--             <td>1박</td> -->
<!--             <td>2022.01.07 (금)</td> -->
<!--             <td>1</td> -->
<!--             <td>2</td> -->
<!--             <td>0</td> -->
<!--           </tr> -->
<!--         </table> -->
<!--       </div> -->
<!--       <div class="btn_sc"> -->
<!--         <a href="reserve.html"><img src="resources/img/btn_search.gif" alt="검색버튼이미지"></a> -->
<!--       </div> -->
      <!-- 호텔예약테이블 끝 -->
      <!-- 호텔예약이미지 시작 -->
<!--       <section class="img_rs"> -->
<!--         <a href="#"><img src="resources/img/diningMainBanner.jpg" alt="예약이미지"></a> -->
<!--       </section> -->
      <!-- 호텔예약이미지 끝 -->
      <!-- 스폐셜 오퍼 시작 -->
      <section class="oper_main">
        <h3><img src="resources/img/specialOffer.gif" alt="스폐셜오퍼이미지"></h3>

        <div class="oper_img1">
          <a href="#"><img src="resources/img/R0000001HWF0_KR.jpg" alt="크리스마스"></a>
        </div>

        <div class="oper_img2">
          <ul>
            <li><a href="#"><img src="resources/img/R0000001GSBT_KR.jpg" alt="제주신라숲"></a></li>
            <li><a href="#"><img src="resources/img/R0000001HWB0_KR.jpg" alt="요리하는사람"></a></li>
          </ul>
        </div>
        <div class="oper_img3">
          <ul>
            <li><a href="#"><img src="resources/img/R0000001HWAN_KR.jpg" alt="와인과와인잔이있는바"></a></li>
            <li><a href="#"><img src="resources/img/R0000001HWAS_KR.jpg" alt="커피든사람"></a></li>
          </ul>
        </div>
        <div class="oper_img4">
          <a href="#"><img src="resources/img/btnOfferMore.gif" alt="더보기버튼이미지"></a>
        </div>
      </section>
      <!-- 스폐셜 오퍼 끝 -->
    </section>
    <!-- content_wrap1 끝 -->
    <!-- 신라 이워즈 시작 -->
    <section class="content_wrap2">
      <section class="reward_main">
        <h3><img src="resources/img/rwTitle.gif" alt="신라리워즈제목"></h3>
        <div class="reward_content1">
          <ul>
            <li><a href="#"><img src="resources/img/rwDesc1.gif" alt="회원전용상품"></a></li>
            <li><a href="#"><img src="resources/img/rwDesc2.gif" alt="신라리워즈 특전"></a></li>
            <li><a href="#"><img src="resources/img/rwDesc3.gif" alt="신라리워즈 포인트"></a></li>
          </ul>
        </div>
        <div class="reward_content2">
          <span><a href="#"><img src="resources/img/rwBenefit.gif" alt="신라리워즈설명글"></a></span>
          <span><a href="#"><img src="resources/img/btnRwMore.gif" alt="신라리워즈설명글자세히보기"></a></span>
        </div>
        <div class="reward_content3">
          <img src="resources/img/rwCard.png" alt="신라리워즈카드이미지">
          <a href="#" class="rw_join"><img src="resources/img/btnRwJoin.gif" alt="가입하기"></a>
        </div>
      </section>
    </section>
    <!-- 신라 이워즈 끝 -->
    <!-- 신라 갤러리 시작 -->
    <section class="gallery_main">
      <h3><img src="resources/img/enjoyTit.gif" alt="갤러리제목"></h3>
      <iframe width="1200" height="678" src="https://www.youtube.com/embed/81xxCLvADlU" title="YouTube video player"
        frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen></iframe>
    </section>
    <!-- 신라 갤러리 끝 -->
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
        <p class="footer_content3_p"><a href="#"><img src="resources/img/footLinkbtn.gif" alt="사업자정보확인"></a></p>
      </div>
    </div>


<!-- footer 끝 -->




  </main>
</body>
</html>