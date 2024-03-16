<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Set the page title -->
<c:set var="pageTitle" value="MAIN"></c:set>

<!-- Begin HTML structure -->
<div class="flex-grow"></div>

<!-- CSS Styling -->
<style>
/* Reset default styling */
* {
    font-family: 'Noto Sans KR', sans-serif;
    text-decoration: none;
    color: #333333;
    margin: 0;
    padding: 0;
    list-style: none;
    font-weight: 300;
}

/* Body styles */
body {
    margin: 0;
    padding: 0;
}

/* Header styles */
header {
    padding: 0 48px;
}

/* Navigation styles */
ul a {
    font-size: 16px;
}

/* Logo styles */
#logo a {
    display: flex;
    justify-content: center;
    padding-top: 20px;
}

/* Menu styles */
#menu {
    display: flex;
    justify-content: space-between;
    padding-top: 20px;
}

/* Menu link styles */
#menu a {
    padding-bottom: 22px;
}

/* Menu link hover styles */
#menu a:hover {
    border-bottom: 3px solid #004679;
}

/* Main section styles */
#main {
    margin-top: 24px;
    height: 600px;
    background-image: url(https://cdn.pixabay.com/photo/2016/11/18/12/06/white-male-1834114_1280.jpg);
    background-size: cover;
    background-position: center;
    display: flex;
}
/* Text section styles */
#text {
    width: 1048px;
    height: 420px;
    border: 5px solid #ffffff;
    margin: auto;
    display: flex;
}

/* Alignment styles */
.align {
    margin: auto;
}

/* Heading styles */
#text h1 {
    color: #ffffff;
    font-size: 32px;
    font-weight: 700;
    text-align: center;
}

#text h2 {
    color: #ffffff;
    font-size: 48px;
    font-weight: 700;
    text-align: center;
    line-height: 58px;
}

#text h3 {
    font-size: 16px;
    text-align: center;
    background-color: #ffffff;
    height: 40px;
    line-height: 40px;
    width: 43vw;
    margin-left: auto;
    margin-right: auto;
    margin-top: 20px;
}

#text p {
    color: #ffffff;
    font-size: 16px;
    text-align: center;
    margin-top: 10px;
}

/* Sub-section styles */
#sub {
    margin: 0 48px;
    margin-bottom: 80px;
    padding-top: 20px;
}

/* Box styles */
.box {
    height: 239px;
    background-color: #22AFFF;
    border-radius: 10px;
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
    margin-top: 20px;
}

#yellow {
    background-color: #FFC122;
}

.box img {
    display: flex;
    margin-right: 20px;
    height: 240px;
}

/* Text box styles */
.textBox {
    height: 239px;
    margin-left: 30px;
    display: flex;
    flex-direction: column;
}

.textBox p {
    color: #ffffff;
    font-size: 14px;
}

.textBox h1 {
    color: #ffffff;
    font-weight: 700;
    font-size: 32px;
    margin: 5px 0;
}

.textBox a {
    color: #ffffff;
    width: 95px;
    height: 24px;
    border: 1px solid #ffffff;
    padding: 4px 20px;
    border-radius: 20px;
}

.btn {
    margin-top: 28px;
}

.textBox a:hover {
    background-color: #ffffff;
    color: #22AFFF;
    transition: all 0.3s ease-in-out;
}

#yellow .textBox a:hover {
	background-color: #ffffff;
	color: #FFC122;
	transition: all 0.3s ease-in-out;
}

#news {
	background-color: #F0F0F0;
	padding: 54px 48px;
}

#news h1 {
	font-weight: 700;
	font-size: 32px;
	margin-bottom: 20px;
}

.contents {
	display: inline;
}

.contentsBox {
	border-top: 8px solid #22AFFF;
	background-color: #ffffff;
	padding: 40px;
	margin-bottom: 20px;
}

.contentsBox h3 {
	font-size: 22px;
	margin-bottom: 20px;
}

.contentsBox li {
	padding: 4px 0;
	font-size: 14px;
}

.contentsBox li a {
	font-size: 14px;
}

.contentsBox li:not(:last-child) {
	border-bottom: 1px solid #333333;
}

.contentsBox li:hover {
	color: #b3b3b3;
}

.contentsBox a:hover {
	color: #b3b3b3;
}

#banner {
	width: 100%;
	height: 170px;
	background-image: url(https://i.postimg.cc/MZPbLbdG/image.jpg);
	background-position: center;
	background-size: cover;
	margin-top: 20px;
}

footer {
	margin-top: 65px;
	background-color: #F0F0F0;
	padding: 32px 48px 32px;
}

#footerlink {
	display: flex;
	margin-bottom: 16px;
	border-bottom: 1px solid #b3b3b3;
	padding-bottom: 16px;
}

#footerlink li {
	margin-right: 20px;
	font-size: 12px;
}

#footerlink li:hover {
	color: #b3b3b3;
}

#footerlink1 {
	display: flex;
}

#footerlink1 li {
	margin-right: 2px;
	font-size: 12px;
}

#footerlink1 li:not(:last-child)::after {
	content: '| ';
	margin-left: 2px;
}

@media ( min-width : 600px) {
	header {
		padding: 0 80px;
	}
	#sub {
		margin: 0 80px;
		margin-bottom: 80px;
		padding-top: 20px;
	}
	#news {
		background-color: #F0F0F0;
		padding: 54px 80px;
	}
	footer {
		margin-top: 65px;
		background-color: #F0F0F0;
		padding: 32px 80px 32px;
	}
}

@media ( min-width : 800px) {
	header {
		padding: 0 120px;
	}
	#sub {
		margin: 0 120px;
		margin-bottom: 80px;
		padding-top: 20px;
	}
	#news {
		background-color: #F0F0F0;
		padding: 54px 120px;
	}
	footer {
		margin-top: 65px;
		background-color: #F0F0F0;
		padding: 32px 120px 32px;
	}
}

@media ( min-width : 1000px) {
	header {
		padding: 0 120px;
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	ul a {
		font-size: 16px;
	}
	#logo a {
		display: flex;
		justify-content: center;
		padding-top: 20px
	}
	#menu {
		display: flex;
		justify-content: space-between;
		padding-top: 20px;
	}
	#menu a {
		margin-left: 60px;
		padding-bottom: 22px;
	}
	#main {
		margin-top: 20px;
		height: 600px;
		background-image:
			url(https://i.postimg.cc/fW5Bv32j/jc-gellidon-x-X0-NVb-Jy8a8-unsplash.jpg);
		background-size: cover;
		background-position: center;
		display: flex;
	}
	#sub {
		margin: 0 120px;
		margin-bottom: 80px;
		padding-top: 20px;
	}
	.box {
		height: 239px;
		background-color: #22AFFF;
		border-radius: 10px;
		display: flex;
		justify-content: space-between;
		align-items: flex-end;
		flex: 1 1 100%;
	}
	#news {
		background-color: #F0F0F0;
		padding: 54px 120px;
	}
	#banner {
		width: 100%;
		height: 320px;
		background-image: url(https://i.postimg.cc/MZPbLbdG/image.jpg);
		background-position: center;
		background-size: cover;
		margin-top: 0px;
	}
	footer {
		margin-top: 65px;
		background-color: #F0F0F0;
		padding: 32px 120px 32px;
	}
}

@media ( min-width : 1400px) {
	.contents {
		display: flex;
	}
	.contentsBox {
		border-top: 8px solid #22AFFF;
		background-color: #ffffff;
		padding: 40px;
		flex: 1 0%;
		margin-bottom: 20px;
	}
	.contentsBox:not(:last-child) {
		margin-right: 20px;
	}
}

@media ( min-width : 1600px) {
	header {
		padding: 0 180px;
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	ul a {
		font-size: 16px;
	}
	#logo a {
		display: flex;
		justify-content: center;
		padding-top: 20px
	}
	#menu {
		display: flex;
		justify-content: space-between;
		padding-top: 20px;
	}
	#menu a {
		margin-left: 60px;
	}
	#sub {
		margin: 0 180px;
		margin-bottom: 80px;
		padding-top: 20px;
		display: flex;
	}
	.box {
		height: 239px;
		background-color: #22AFFF;
		border-radius: 10px;
		display: flex;
		justify-content: space-between;
		align-items: flex-end;
	}
	.box:not(:last-child) {
		margin-right: 20px;
	}
	.box img {
		display: flex;
		margin-right: 20px;
		height: 240px;
	}
	#news {
		background-color: #F0F0F0;
		padding: 54px 180px;
	}
	footer {
		margin-top: 65px;
		background-color: #F0F0F0;
		padding: 32px 180px 32px;
	}
}

@media ( min-width : 1750px) {
	#sub {
		margin: 0 180px;
		margin-bottom: 80px;
		padding-top: 100px;
		display: flex;
	}
	.box img {
		display: flex;
		margin-right: 20px;
		height: 345px;
	}
}
</style>
<header>
	<div id="logo">
		<a href="/">LOGO</a>
	</div>
	<ul id="menu">
		<li><a href="#">채용 공고</a></li>
		<li><a href="../home/APITest2">병원 위치</a></li>
		<li><a href="#">병원 리뷰</a></li>
		<li><a href="#">자유게시판</a></li>
		<li><a href="#">공지사항</a></li>
		<c:if test="${!rq.isLogined() }">
			<li><a class="hover:underline" href="../member/login">로그인&회원가입</a></li>
		</c:if>
		<c:if test="${rq.isLogined() }">
			<li><a class="hover:underline" href="../article/write">글쓰기</a></li>
			<li class="hover:underline"><a class="h-full px-3 flex items-center" href="/usr/member/myPage">회원정보</a></li>
			<li><a onclick="if(confirm('로그아웃 할래?') == false) return false;" class="hover:underline"
				href="../member/doLogout">로그아웃</a></li>
		</c:if>
	</ul>
</header>

<div id="main">
	<div id="text">
		<div class="align">
			<h1 class="whtie">관련 정보로 바꿀 예정</h1>
			<h2 class="whtie">핫 이슈가 올라오게끔 변경</h2>
			<h3>배경 이미지는 치료실이 나올수있게끔 초마다 사진 바뀌게끔</h3>
			<p class="whtie">	</p>
		</div>
	</div>
</div>

<div id="sub">
	<div class="box" class="one">
		<div class="textBox">
			<div class="align">
				<P>병원 리뷰</P>
				<h1>별점 확인</h1>
				<p>병원에 대한 평가가 궁금하다면?</p>
				<div class="btn">
					<a href="../home/APITest4">바로가기 ></a>
				</div>
			</div>
		</div>

		<img src="https://i.postimg.cc/bwNXTDjQ/G2.png">
	</div>

	<div class="box" id="yellow" class="one">
		<div class="textBox">
			<div class="align">
				<P>채용 공고</P>
				<h1>이직과 취업을 하고싶다면</h1>
				<p>지금바로 공고확인하기</p>
				<div class="btn">
					<a href="../article/list">바로가기 ></a>
				</div>
			</div>
		</div>

		<img src="https://i.postimg.cc/W4CQT5qn/B2.png">
	</div>

	<div class="box" id="two">
		<div class="textBox">
			<div class="align">
				<P>치료사들의 힐링을 위한</P>
				<h1>자유 게시판</h1>
				<p>외부활동 / 생활 속 건강 수칙</p>
				<div class="btn">
					<a href="../article/list">바로가기 ></a>
				</div>
			</div>
		</div>

		<img src="https://i.postimg.cc/02KKNQ40/B3.png">
	</div>
</div>

<div id="news">
	<!-- Title -->
	<h1>최신 뉴스</h1>
	<!-- Content boxes for news -->
	<div class="contents">
		<!-- Content box 1 -->
		<div class="contentsBox">
			<!-- Heading -->
			<h3>병원 관련 뉴스</h3>
			<!-- List -->
			<ul>
				<!-- List items -->
				<li><a href="#">이번 달 병원 리뷰 랭킹 발표</a></li>
				<li><a href="#">최근 인기 있는 병원 리뷰</a></li>
				<li><a href="#">전국 병원 리뷰 통계 발표</a></li>
			</ul>
		</div>
		<!-- Content box 2 -->
		<div class="contentsBox">
			<!-- Heading -->
			<h3>의료 정보 뉴스</h3>
			<!-- List -->
			<ul>
				<!-- List items -->
				<li><a href="#">코로나19 예방 수칙 업데이트</a></li>
				<li><a href="#">국내외 의료 기술 동향</a></li>
				<li><a href="#">건강한 생활을 위한 정보</a></li>
			</ul>
		</div>
	</div>
</div>
	<div id="banner">배너 관련 이미지로 변경</div>

<footer>
	<ul id="footerlink">
		<li>관련기관 ></li>
		<li>보건환경연구원 ></li>
		<li>질병관리청 관련기관 ></li>
	</ul>
	<ul id="footerlink1">
		<li>신고상담</li>
		<li>보건소</li>
		<li>질병관리청 콜센터 1339</li>
		<li>지역번호 + 120</li>
		<li>지역번호 + 114</li>
	</ul>
</footer>

<%@ include file="../common/foot.jspf"%>