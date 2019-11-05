<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	padding-top: 200px;
	padding-bottom: 90px;
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
	padding-top: 14px;
	padding-bottom: 14px;
}

.btn-dark {
	background-color: black;
	color: white;
	font-weight: bold;
	padding-top: 14px;
	padding-bottom: 14px;
}

.a_button {
	background-color: black;
	border-radius: 5px;
}

.main-content {
	padding-top: 70px;
	padding-botton: 50px;
}

.main-contents {
	margin: 50px auto;
	padding: 20px 0px;
	text-align: center;
}

.main-contents .form-group {
	text-align: left;
}
</style>
<script type="text/javascript">
	function main() {
		location.replace('main.safefood');
	}

	function join() {
		location.replace('insertForm.safefood');
	}
	function main_login() {
		location.replace('loginForm.safefood');
	}
	function logout() {
		location.replace('logout.safefood');
	}
	function myinfo() {
		location.replace('myinfo.safefood');
	}
</script>
</head>
<jsp:include page="frame_header.jsp"/>
<body>
	<div class="container main-content">
		<div class="container main-contents">
			<h1>Safe Food</h1>
			<hr>
			<p>안전한 음식 문화를 만들기 위한 프로젝트</p>
		</div>

		<div class="container main-contents">
			<form action="foodlist.safefood" method=POST>
				<div
					class="form-group col-sm-3 col-sm-offset-2 col-md-3 col-md-offset-2 col-lg-3 col-lg-offset-2"
					style="display: inline-block;">
					<label for="key">검색 조건</label> <select class="form-control"
						id="key" name="key">
						<option>제품명</option>
						<option>제조사</option>
						<option>원재료</option>
						<option>알레르기 성분</option>
					</select>
				</div>
				<div class="form-group col-sm-5 col-md-5 col-lg-5">
					<label for="word">검색 단어</label>
					<div id="word">
						<input type="text" class="form-control" name="word"
							style="width: 80%; display: inline-block;"> <input
							type="submit" class="btn btn-dark" value="검색"
							style="display: inline;">
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
<jsp:include page="frame_footer.jsp"/>
</html>