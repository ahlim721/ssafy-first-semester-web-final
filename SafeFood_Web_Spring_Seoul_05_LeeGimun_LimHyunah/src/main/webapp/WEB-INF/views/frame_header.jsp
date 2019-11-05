<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<header>
	<div>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- 위의 노란색 부분 -->
			<div class="container-fulid">
				<div class="navbar-with-logo">
					<div class="container">
						<a class="navbar-brand" href="main.safefood"> <img
							src="resources/img/logo4.png" alt="..." height="70px">
						</a>
						<div class="navbar-right" style="margin: 30px;">
							<ul class="nav navbar-nav">
								<c:if test="${empty sessionId }">
									<li style="padding-right: 10px">
										<button type="button" class="btn btn-light"
											onclick="main_login()">로그인</button>
									</li>
									<li style="padding-right: 10px">
										<button type="button" class="btn btn-dark" onclick="join()">회원가입</button>
									</li>
								</c:if>
								<c:if test="${not empty sessionId }">
									<p>${sessionId }님반갑습니다</p>
									<li style="padding-right: 10px">
										<button type="button" class="btn btn-light" onclick="logout()">로그아웃</button>
									</li>
									<li style="padding-right: 10px"><a
										href="myinfo.safefood?id=${sessionId}" class="a_button"
										style="color: white">내 정보</a></li>
								</c:if>
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
						<li><a href="foodlist.safefood">상품 정보</a></li>
						<li><a href="#">베스트 섭취 정보</a></li>
						<li><a href="myfoodlist.safefood">내 섭취 정보</a></li>
						<li><a href="#">예상 섭취 정보</a></li>
						<li><a href="board.safefood">Q&A</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

</header>
</html>