<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	padding-top: 40px;
	padding-botton: 10px;
}

.main-contents {
	padding-top: 30px;
	text-align: center;
}

.main-contents .form-group {
	text-align: left;
}

.item-lists a {
	background-color: rgb(255, 201, 14);
	color
	=
	black;
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

	<div class="container">
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
		<hr style="margin-top: 5px;">
		<div class="container item-lists">
			<ul id="print-itemlist" style="list-style: none;">
				<c:forEach items="${list}" var="f">
					<li>
						<div class="container item-info">
							<img class="col-md-2 col-sm-2 col-lg-2" src="${f.img}">
							<div class="container col-md-10 col-sm-10 col-lg-10">
								<h2 style="margin-bottom: 10px;">${f.name}</h2>
								<hr style="margin-top: 5px;">
								<p>${f.maker}</p>
								<p>${f.material}</p>
								<a href="detail.safefood?code=${f.code}"
									class="btn col-md-4 col-sm-4 col-lg-4">상품 정보 보기</a> <a
									href="addFoodProcess.safefood?id=${sessionId}&code=${f.code}" 
									class="btn col-md-4 col-sm-4 col-lg-4 col-md-offset-1 col-sm-offset-1 col-lg-offset-1">섭취
									식품 등록</a>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>


</body>
<jsp:include page="frame_footer.jsp"/>
</html>