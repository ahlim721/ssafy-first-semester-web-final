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
			<!-- ���� ����� �κ� -->
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
											onclick="main_login()">�α���</button>
									</li>
									<li style="padding-right: 10px">
										<button type="button" class="btn btn-dark" onclick="join()">ȸ������</button>
									</li>
								</c:if>
								<c:if test="${not empty sessionId }">
									<p>${sessionId }�Թݰ����ϴ�</p>
									<li style="padding-right: 10px">
										<button type="button" class="btn btn-light" onclick="logout()">�α׾ƿ�</button>
									</li>
									<li style="padding-right: 10px"><a
										href="myinfo.safefood?id=${sessionId}" class="a_button"
										style="color: white">�� ����</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- �Ʒ� ������ �κ� -->
			<div class="container">
				<div class="navbar-header">
					<!-- ����� ���¿��� ߲������:��ȭ�鿡���� ������ ���� -->
					<!-- ũ�Ⱑ �۾��� ���, �޴��� ������ ������ �ִ´�. span�� ���߸�� ����.-->
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-ex11-collapse">
						<!-- �Ʒ� Ŭ���� ���� -->
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- �ΰ� -->
				</div>
				<div class="navbar-right navbar-ex11-collapse navber-collapse ">
					<ul class="nav navber-nav">
						<li><a href="foodlist.safefood">��ǰ ����</a></li>
						<li><a href="#">����Ʈ ���� ����</a></li>
						<li><a href="myfoodlist.safefood">�� ���� ����</a></li>
						<li><a href="#">���� ���� ����</a></li>
						<li><a href="board.safefood">Q&A</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

</header>
</html>