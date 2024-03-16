<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="LOGIN"></c:set>
<%@ include file="../common/head.jspf"%>

<script>
	$(document).ready(function() {
		$("#checkDuplicate").click(function() {
			var id = $("#loginId").val();

			if (id.trim() === '') {
				$("#idCheckMessage").text("아이디를 입력해주세요.");
				return;
			}

			$.ajax({
				type : "POST",
				url : "/idCheck",
				data : {
					id : id
				},
				success : function(data) {
					if (data === "true") {
						$("#idCheckMessage").text("사용 가능한 아이디입니다.");
					} else if (data === "false") {
						$("#idCheckMessage").text("중복된 아이디입니다.");
					}
				},
				error : function() {
					$("#idCheckMessage").text("서버와의 통신 중 오류가 발생했습니다.");
				}
			});
		});

		$("#signupForm").submit(function() {
			// Disable duplicate checking
			$("#checkDuplicate").prop("disabled", true);

			// Check if the ID is available
			if ($("#idCheckMessage").text() !== "사용 가능한 아이디입니다.") {
				alert("아이디를 다시 확인해주세요.");
				// Re-enable duplicate checking
				$("#checkDuplicate").prop("disabled", false);
				return false;
			}
		});
	});
</script>
<script>
	window.addEventListener('DOMContentLoaded', function() {
		var signInTab = document.querySelector('.sign-in');
		var signUpTab = document.querySelector('.sign-up');
		var loginWrap = document.querySelector('.login-wrap');

		signInTab.addEventListener('click', function() {
			loginWrap.style.height = '670px';
		});

		signUpTab.addEventListener('click', function() {
			loginWrap.style.height = '1100px';
		});
	});
</script>
</body>
</html>
<style>
body {
	margin: 0;
	color: #6a6f8c;
	background: #c8c8c9;
	font: 600 16px/18px 'Open Sans', sans-serif;
	min-height: 120vh;
}

foot {
	background: #c8c8c8;
}

*, :after, :before {
	box-sizing: border-box
}

.clearfix:after, .clearfix:before {
	content: '';
	display: table
}

img {
	max-width: 100%; /* 이미지의 최대 너비를 부모 요소의 너비에 맞게 조절합니다. */
	height: auto; /* 이미지의 높이를 자동으로 조절하여 비율을 유지합니다. */
}

.clearfix:after {
	clear: both;
	display: block
}

a {
	color: inherit;
	text-decoration: none
}

.login-wrap {
	width: 100%;
	margin: auto;
	max-width: 525px;
	min-height: 670px;
	position: relative;
	box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0
		rgba(0, 0, 0, .19);
}

.login-html {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 90px 70px 50px 70px;
	background: rgba(236, 230, 204, .9);
}

.login-html .sign-in-htm, .login-html .sign-up-htm {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	transform: rotateY(180deg);
	backface-visibility: hidden;
	transition: all .4s linear;
}

.login-html .sign-in, .login-html .sign-up, .login-form .group .check {
	display: none;
}

.login-html .tab, .login-form .group .label, .login-form .group .button
	{
	text-transform: uppercase;
}

.login-html .tab {
	font-size: 22px;
	margin-right: 15px;
	padding-bottom: 5px;
	margin: 0 15px 10px 0;
	display: inline-block;
	border-bottom: 2px solid transparent;
}

.login-html .sign-in:checked+.tab, .login-html .sign-up:checked+.tab {
	color: #ffff0;
	border-color: #1161ee;
}

.login-form {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}

.login-form .group {
	margin-bottom: 15px;
}

.login-form .group .label, .login-form .group .input, .login-form .group .button
	{
	width: 100%;
	color: #fff;
	display: block;
}

.login-form .group .input, .login-form .group .button {
	border: none;
	padding: 15px 20px;
	border-radius: 25px;
	background: rgba(0, 0, 0, .4);
}

.login-form .group input[data-type="password"] {
	text-security: circle;
	-webkit-text-security: circle;
}

.login-form .group .label {
	color: #aaaaaa;
	font-size: 12px;
}

.login-form .group .button {
	background: #1161ee;
}

.login-form .group label .icon {
	width: 15px;
	height: 15px;
	border-radius: 2px;
	position: relative;
	display: inline-block;
	background: rgba(0, 0, 0, .9);
}

.login-form .group label .icon:before, .login-form .group label .icon:after
	{
	content: '';
	width: 10px;
	height: 2px;
	background: #fff;
	position: absolute;
	transition: all .2s ease-in-out 0s;
}

.login-form .group label .icon:before {
	left: 3px;
	width: 5px;
	bottom: 6px;
	transform: scale(0) rotate(0);
}

.login-form .group label .icon:after {
	top: 6px;
	right: 0;
	transform: scale(0) rotate(0);
}
#checkDuplicate {
    background: #1161ee;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 25px;
    cursor: pointer;
    font-size: 12px;
    text-transform: uppercase;
    transition: background-color 0.3s ease;
}

#checkDuplicate:hover {
    background: #0b48bf;
}

.login-form .group .check:checked+label {
	color: #fff;
}

.login-form .group .check:checked+label .icon {
	background: #1161ee;
}

.login-form .group .check:checked+label .icon:before {
	transform: scale(1) rotate(45deg);
}

.login-form .group .check:checked+label .icon:after {
	transform: scale(1) rotate(-45deg);
}

.login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm
	{
	transform: rotate(0);
}

.login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
	transform: rotate(0);
}

.hr {
	height: 2px;
	margin: 60px 0 50px 0;
	background: rgba(0, 0, 0, .9);
}

.foot-lnk {
	text-align: center;
}

.input.type {
	color: #00000; /* 텍스트 입력란의 글자색을 검은색으로 설정합니다. */
}

.input:focus {
	color: #00000; /* 포커스가 됐을 때도 글자색을 검은색으로 유지합니다. */
}
</style>
<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign
			In</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<form action="../member/doLogin" method="POST">
				<input type="hidden" name="afterLoginUri" value="${param.afterLoginUri }" />
				<div class="sign-in-htm">

					<div class="group">
						<label for="user" class="label">아이디</label> <input name="loginId" type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">비밀번호</label> <input name="loginPw" type="password" class="input"
							data-type="password">
					</div>
					<div class="group">
						<input id="check" type="checkbox" class="check" checked> <label for="check"><span class="icon"></span>
							로그인 정보 저장</label>
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign In">
					</div>

					<div class="hr"></div>
					<div class="foot-lnk">
						<a href="#forgot">Forgot Password?</a>

					</div>

				</div>
			</form>
			<div class="sign-up-htm">
				<form action="../member/doJoin" method="POST">
					<div class="group">
						<label for="user" class="label">아이디</label> <input name="loginId" id="loginId" type="text" class="input">
						<button type="button" id="checkDuplicate">중복 체크</button>
						<span id="idCheckMessage"></span>
					</div>
					<div class="group">
						<label for="pass" class="label">비밀번호</label> <input name="loginPw" type="password" class="input"
							data-type="password">
					</div>
					<div class="group">
						<label for="pass" class="label">비밀번호 확인</label> <input name="loginPw2" type="password" class="input"
							data-type="password">
					</div>
					<div class="group">
						<label for="pass" class="label">이름</label> <input name="name" type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">이메일</label> <input name="email" type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">전화번호</label> <input name="cellphoneNum" type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">닉네임</label> <input name="nickname" type="text" class="input">
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign Up">
					</div>
				</form>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a><label for="tab-1"></label>Already Member?</a>
				</div>
			</div>
		</div>
	</div>
</div>