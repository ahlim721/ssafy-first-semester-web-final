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

.login {
	width: 300px;
	border: 2px solid rgb(255, 201, 14);
	background-color: white;
	margin: 150px auto;
	padding: 30px 20px;
}

h2 {
	padding-bottom: 30px;
}

input[type=text], input[type=password] {
	border-radius: 5px;
}

#center {
	text-align: center;
}

.styled {
	border: 0;
	line-height: 2.5;
	padding: 0 20px;
	font-size: 1.3rem;
	text-align: center;
	color: #fff;
	text-shadow: 1px 1px 1px #000;
	border-radius: 10px;
	background-color: rgba(255, 201, 14, 1);
	background-image: linear-gradient(to top left, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, .2) 30%, rgba(0, 0, 0, 0));
	box-shadow: inset 2px 2px 3px rgba(255, 255, 255, .6), inset -2px -2px
		3px rgba(0, 0, 0, .6);
}

.styled:hover {
	background-color: yellow;
}

.styled:active {
	box-shadow: inset -2px -2px 3px rgba(255, 255, 255, .6), inset 2px 2px
		3px rgba(0, 0, 0, .6);
}
</style>

<script type="text/javascript">
	function join() {
		location.replace('insertForm.safefood');
	}
	function success() {
		location.replace('loginProcess.safefood');
	}
	function main_login() {
		location.replace('loginForm.safefood');
	}
</script>
</head>
<jsp:include page="frame_header.jsp"/>
<body>
	<div class="login">

		<div id="center">
			<img src="resources/img/logo5.png">
		</div>
		<form method="POST" action="loginProcess.safefood">
			<h2 style="font-weight: bold;">로그인</h2>
			<%
				String error = (String) request.getAttribute("error");
				if (error == null) {
			%>
			<%
				} else {
			%>
			<h5 style="color: red"><%=error%></h5>
			<%
				}
			%>
			<p>
				&nbsp;&nbsp;ID : <input type="text" name="id" />
			</p>
			<p>
				PW : <input type="password" name="pass" />
			</p>
			<div id="center">
				<input type="submit" class="styled" value="로그인">
				<a href="passwordForm.safefood"><input type="button" class="styled" value="비밀번호 찾기" /></a>
			</div>
		</form>
	</div>
</body>
</body>
<jsp:include page="frame_footer.jsp"/>
</html>