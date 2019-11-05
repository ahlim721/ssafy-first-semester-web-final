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
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.6/Chart.bundle.min.js"></script>

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

.info-title {
	padding: 20px;
}

.table-title {
	width: 150px;
	font-weight: bold;
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

	window.onload = function(){
		var nutri_chart = new Chart(nutrient_chart,{
			type:'doughnut',
			data:{
				labels:["탄수화물", "단백질", "지방", "당류", "나트륩", "콜레스트롤", "포화지방산", "트랜스지방"],
				datasets:[
					{
						label : '영양 정보',
						backgroundColor : ["#F6E3CE", "#F5F6CE", "#E3F6CE", "#D8F6CE", "#CEF6D8", "#CEF6F5", "#CECEF6", "#F6CEE3"],
						data: [${f.carbo},${f.protein},${f.fat},${f.sugar},${f.natrium},${f.chole},${f.fattyacid},${f.transfat}]
					}
				]
			}
		});
	}
	
</script>
</head>
<jsp:include page="frame_header.jsp"/>
<body>
	<div style="text-align: center;" class="container">
		<div class="container div-product-info">
			<div class="info-title">
				<img src="resources/img/shopping_icon.png" height="45pt"> <span
					style="font-size: 30pt;">제품 정보</span>
			</div>
			<div class="container info-content">
				<img id="product-image" src="${f.img}"
					class="col-md-2 col-sm-2 col-lg-2">
				<div class="container  col-md-9 col-sm-9 col-lg-9">
					<table class="table">
						<tr>
							<td class="table-title">제품명</td>
							<td id="product-name">${f.name}</td>
						</tr>
						<tr>
							<td class="table-title">제조사</td>
							<td id="product-maker">${f.maker}</td>
						</tr>
						<tr>
							<td class="table-title">원재료</td>
							<td id="product-material">${f.material}</td>
						</tr>
						<tr>
							<td class="table-title">알레르기</td>
							<td id="product-allergy">${allergy}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="container div-nutritent-info">
			<div class="info-title">
				<img src="resources/img/information_icon.png" height="45pt">
				<span style="font-size: 30pt;">영양 정보</span>
			</div>
			<div class="container info-content">
				<canvas id="nutrient_chart"
					style="width: 367px; height: 183px; display: inline-block; padding: 20px;"></canvas>
				<div class="container">
					<table class="table">
						<tr>
							<td class="table-title">일일 제공량</td>
							<td id="daily">${f.supportpereat}</td>
						</tr>
						<tr>
							<td class="table-title">칼로리</td>
							<td id="calory">${f.calory}</td>
						</tr>
						<tr>
							<td class="table-title">탄수화물</td>
							<td id="tan">${f.carbo}</td>
						</tr>
						<tr>
							<td class="table-title">단백질</td>
							<td id="dan">${f.protein}</td>
						</tr>
						<tr>
							<td class="table-title">지방</td>
							<td id="ji">${f.fat}</td>
						</tr>
						<tr>
							<td class="table-title">당류</td>
							<td id="dang">${f.sugar}</td>
						</tr>
						<tr>
							<td class="table-title">나트륨</td>
							<td id="na">${f.natrium}</td>
						</tr>
						<tr>
							<td class="table-title">콜레스테롤</td>
							<td id="cole">${f.chole}</td>
						</tr>
						<tr>
							<td class="table-title">포화지방산</td>
							<td id="po">${f.fattyacid}</td>
						</tr>
						<tr>
							<td class="table-title">트랜스지방</td>
							<td id="trans">${f.transfat}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>

	</div>
</body>
<jsp:include page="frame_footer.jsp"/>
</html>