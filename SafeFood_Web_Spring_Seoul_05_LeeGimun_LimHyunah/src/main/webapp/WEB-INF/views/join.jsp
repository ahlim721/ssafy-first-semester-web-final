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

#container {
	width: 700px;
	border: 2px solid rgb(255, 201, 14);
	background-color: white;
	margin: 150px auto;
	padding: 30px 20px;
}

table {
	margin: 0 auto;
}

input[type=submit] {
	border-radius: 5px;
	margin: 0px auto;
	color: white;
}

input[type=text], input[type=password] {
	border-radius: 5px;
}

button {
	color: black;
	border-radius: 5px;
	background-color: rgb(225, 201, 14);
}

h2 {
	padding-bottom: 30px;
}

td {
	padding: 5px 5px;
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
	function success() {
		location.replace('insertProcess.safefood');
	}
	function main() {
		location.replace('main.safefood');
	}

	function join() {
		location.replace('insertForm.safefood');
	}
	function main_login() {
		location.replace('loginForm.safefood');
	}
</script>

</head>
<jsp:include page="frame_header.jsp"/>
<body>
	<div id="container">
		<form method="POST" action="insertProcess.safefood">
			<center>
				<h2 style="font-weight: bold;">회원가입</h2>
			</center>

			<table cellspacing="10">

				<tr>
					<td style="font-weight: bold;">아이디</td>
					<td><input type="text" placeholder="아이디를 입력해주세요" name="id" />
						<input type="button" class="styled" value="중복확인" /></td>
				</tr>
				<tr>
					<td style="font-weight: bold;">비밀번호</td>
					<td><input type="password" placeholder="영문 숫자 포함 6자리 이상"
						name="pass" /></td>
				</tr>
				<tr>
					<td style="font-weight: bold;">이름</td>
					<td><input type="text" placeholder="내용을 입력해주세요" name="name" /></td>
				</tr>
				<tr>
					<td style="font-weight: bold;">주소</td>
					<td><input type="text" placeholder="내용을 입력해주세요" size="70"
						name="address" /></td>
				</tr>
				<tr>
					<td style="font-weight: bold;">알레르기</td>
					<td><input type="checkbox" name="allergy" value="1">대두<input
						type="checkbox" name="allergy" value="2">땅콩<input
						type="checkbox" name="allergy" value="3">우유<input
						type="checkbox" name="allergy" value="4">게</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="checkbox" name="allergy" value="5">새우<input
						type="checkbox" name="allergy" value="6">참치<input
						type="checkbox" name="allergy" value="7">연어<input
						type="checkbox" name="allergy" value="8">쑥</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="checkbox" name="allergy" value="9">소고기<input
						type="checkbox" name="allergy" value="10">닭고기<input
						type="checkbox" name="allergy" value="11">돼지고기</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="checkbox" name="allergy" value="12">복숭아<input
						type="checkbox" name="allergy" value="13">민들레<input
						type="checkbox" name="allergy" value="14">계란흰자</td>
				</tr>


			</table>
			<center>
				<input type="submit" class="styled" value="가입완료" /> <input
					type="button" class="styled" onclick="main()" value="메인으로" />
			</center>
		</form>
	</div>
</body>
<jsp:include page="frame_footer.jsp"/>
</html>