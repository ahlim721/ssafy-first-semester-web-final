<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
footer {
	background-color: rgb(255, 201, 14);
}

body {
	padding-top: 130px;
	padding-bottom: 150px;
}

.navbar-with-logo {
	min-height: 90px;
	background-color: rgb(255, 201, 14);
}

.navbar-brand {
	height: 90px;
}

.navber-nav li {
	display: inline-block;
}

.navber-nav li a {
	color: white;
	font-weight: bold;
}

.navber-nav li a:hover {
	color: black;
}

.navbar-footer {
	background-color: rgb(255, 201, 14);
	padding: 20px;
	font-weight: bold;
}

.navbar-footer span {
	margin-right: 20px;
}

.btn-light {
	background-color: white;
	color: black;
	font-weight: bold;
}

.btn-dark {
	background-color: black;
	color: white;
	font-weight: bold;
}

.main-content {
	padding-top: 70px;
	padding-botton: 50px;
}

.main-contents {
	margin: 50px auto;
	padding : 20px 0px;
	text-align: center;
}
.main-contents .form-group {
	text-align: left;
}
</style>
</head>
<header>
	<div>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- 위의 노란색 부분 -->
			<div class="container-fulid">
				<div class="navbar-with-logo">
					<div class="container">
						<a class="navbar-brand" href="#"> <img src="../img/logo4.png"
							alt="..." height="70px">
						</a>
						<div class="navbar-right" style="margin: 30px;">
							<ul class="nav navbar-nav">
								<li style="padding-right: 10px">
									<button type="button" class="btn btn-light">로그인</button>
								</li>
								<li style="padding-right: 10px">
									<button type="button" class="btn btn-dark">회원가입</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 아래 검정색 부분 -->
			<div class="container">
				<div class="navbar-header">
					<!-- 모바일 상태에서 三아이콘:웹화면에서는 보이지 않음 -->
					<!-- 크기가 작아질 경우, 메뉴를 아이콘 안으로 넣는다. span은 단추모양 지정.-->
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-ex11-collapse">
						<!-- 아래 클래스 지정 -->
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- 로고 -->
				</div>
				<div class="navbar-right navbar-ex11-collapse navber-collapse ">
					<ul class="nav navber-nav">
						<li><a href="#">상품 정보</a></li>
						<li><a href="#">베스트 섭취 정보</a></li>
						<li><a href="#">내 섭취 정보</a></li>
						<li><a href="#">예상 섭취 정보</a></li>
						<li><a href="#">공지 사항</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

</header>
<body>
	
</body>
<footer>
	<nav class="navbar-footer navbar navbar-fixed-bottom" role="navigation">
		<div class="navbar-left">
			<p style="font-size: 20pt;">Find us</p>
			<hr style="margin: 5px 0px;">
			<span><img src="../img/telephone_icon.png" height="20pt">
				010-1234-5678</span> <span><img src="../img/location_icon.png"
				height="20pt"> 서울 강남구 테헤란로</span>
		</div>
	</nav>
</footer>
</html>