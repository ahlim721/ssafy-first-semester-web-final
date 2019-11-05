<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap -->
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<script src="https://unpkg.com/vue"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>

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
	color: black;
}

td {
	padding: 0px, 10px, 0px, 10px;
}

table {
	margin: 0px auto;
	width: 100%;
}

td input, textarea {
	width: 100%;
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
<jsp:include page="frame_header.jsp" />
<body>
	<div class="container" id="app" style="text-align: center;">
		<h2>Q&A 게시판</h2>
		<router-view></router-view>
	</div>

	<!-- templates -->
	<template id="listboardtemplate">
	<div>
		<div style="display: inline;">
			<form method="get" @submit.prevent="search">
				<select v-model="type">
					<option value="id">id</option>
					<option value="title">title</option>
				</select> <input type="text" v-model="val"> <input type="submit"
					value="검색">
			</form>
		</div>
		<table class="list_table" border="1px">
			<tr>
				<td>NO.</td>
				<td>제목</td>
				<td>글쓴이</td>
				<td>날짜</td>
				<td>조회수</td>
				<td>답변여부</td>
			</tr>
			<tr v-for="l in result">
				<td>{{l.num}}</td>

				<td><router-link :to="{ name: 'detail', params: { num: l.num}}">{{l.title}}</router-link></td>
				<td>{{l.id}}</td>
				<td>{{l.wdate}}</td>
				<td>{{l.count}}</td>
				<td>{{l.isAnswer}}</td>

			</tr>
		</table>
		<span style="text-align: left;"><router-link to="/insert">글작성</router-link></span>
	</div>
	</template>

	<template id="detailboardtemplate">
	<div>
		<table class="list_table">
			<tr>
				<td>제목</td>
				<td><input type="text" v-model="title" readonly="readonly"></td>
			</tr>
			<tr>
				<td>글쓴이</td>
				<td><input type="text" v-model="id" readonly="readonly"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" v-model="pass" readonly="readonly"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea row="100" readonly="readonly" v-model="content"></textarea></td>
			</tr>
		</table>
		<router-link :to="{name:'modify', params:{num:num}}">수정</router-link>
		<router-link :to="{ name: 'delete', params: { num: num}}">삭제</router-link>
	</div>
	</template>

	<template id="insertboardtemplate">
	<div>
		<form @submit.prevent="insert">
			<table class="list_table">
				<tr>
					<td>제목</td>
					<td><input type="text" v-model="title"></td>
				</tr>
				<tr>
					<td>글쓴이</td>
					<td><input type="text" v-model="id" value="${sessionId }"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" v-model="pass"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea row="100" v-model="content"></textarea></td>
				</tr>
			</table>
			<input type="submit" value="작성">
		</form>
	</div>
	</template>
	
	<template id="modifyboardtemplate">
	<div>
		<form @submit.prevent="modify">
			<table class="list_table">
				<tr>
					<td>제목</td>
					<td><input type="text" v-model="title"></td>
				</tr>
				<tr>
					<td>글쓴이</td>
					<td><input type="text" v-model="id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" v-model="pass"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea row="100" v-model="content"></textarea></td>
				</tr>
			</table>
			<input type="submit" value="수정">
		</form>
	</div>
	</template>

	<template id="deleteboardtemplate">
	<div>
		<form @submit.prevent="deleteOne">
			<table class="list_table">
				<tr>
					<td>비밀번호</td>
					<td><input type="password" v-model="pass"></td>
				</tr>
			</table>
			<input type="submit" value="입력">
		</form>
	</div>
	</template>

	<!-- components -->
	<script type="text/javascript">
		// 필요한 컴포넌트
		// 1. 전체 리스트를 보여주는 부분
		// 2. 검색 후 부분 리스트를 보여주는 부분
		var listboard = Vue.component('listboard', {
			template : "#listboardtemplate",
			data() {
				return {
					result : [],
					type : '',
					val : ''
				}
			},
			beforeCreate(){
				console.log('ㅎㅎㅎㅎㅎ')
			},
			mounted() {
				console.log("mounted");
				this.selectAll();
			},
			methods : {
				selectAll : function() {
					console.log("hihihihihihi");
					axios
					.get('http://localhost:9090/boards').then(response => (this.result = response.data));
					console.log(this.result);
				},
				search : function() {
					console.log(this.type);
					console.log(this.val);
					axios.get('http://localhost:9090/boards/'+this.type+'/'+this.val).then(response => (this.result = response.data));
				}
			}
		});
		
		var detailboard = Vue.component('detailboard', {
			template : "#detailboardtemplate",
			data() {
				return {
					result : [],
		    		num:'',
		    		id:'',
		    		title:'',
		    		content:'',
		    		pass:'',
				}
			},
			mounted() {
		    	this.num = this.$route.params.num;
		    	console.log(this.num);
				this.selectOne(this.num);
			},
			methods : {
				selectOne : function(num) {
					axios
					.get('http://localhost:9090/boards/'+num)
					.then(response => {
							this.num = response.data.num
							this.id = response.data.id
							this.title = response.data.title
							this.content = response.data.content
							this.pass = response.data.pass
					});
				}
			}
		});
		
		var insertboard = Vue.component('insertboard', {
			template : "#insertboardtemplate",
			data() {
				return {
					result : [],
		    		id:'',
		    		title:'',
		    		content:'',
		    		pass:'',
				}
			},
			methods : {
				insert : function() {
					axios
					.post('http://localhost:9090/boards/', 
							{id:this.id, title:this.title, content:this.content, pass:this.pass});
					router.push("/")
				}
			}
		});
		
		var modifyboard = Vue.component('modifyboard', {
			template : "#modifyboardtemplate",
			data() {
				return {
					result : [],
					num:'',
		    		id:'',
		    		title:'',
		    		content:'',
		    		pass:'',
				}
			},
			mounted() {
		    	this.num = this.$route.params.num;
		    	console.log(this.num);
				this.selectOne(this.num);
			},
			methods : {
				modify : function() {
					axios
					.put('http://localhost:9090/boards/', 
							{num:this.num, id:this.id, title:this.title, content:this.content, pass:this.pass});
					router.push("/")
				},
				selectOne : function() {
					axios
					.get('http://localhost:9090/boards/'+this.num)
					.then(response => {
							this.id = response.data.id
							this.title = response.data.title
							this.content = response.data.content
							this.pass = response.data.pass
					});
				}
			}
		});
		
		var deleteboard = Vue.component('deleteboard', {
			template : "#deleteboardtemplate",
			data() {
				return {
					result : [],
		    		num:'',
		    		pass:'',
		    		real_pass:''
				}
			},
			mounted() {
		    	this.num = this.$route.params.num;
				this.selectOne(this.num);
			},
			methods : {
				selectOne : function(num) {
					axios
					.get('http://localhost:9090/boards/'+num)
					.then(response => {
							this.num = response.data.num
							this.real_pass = response.data.pass
					});
				},
				deleteOne : function() {
					if(this.real_pass == this.pass) {
						axios.delete('http://localhost:9090/boards/'+this.num)
						router.push("/")
					} else {
						alert('틀렸습니다. 못지웁니다.');
					}
				}
			}
		});
		    
		
		// 뷰라우터
		const router = new VueRouter({
			 routes: [
				{path : '/', component : listboard },
				{path : '/detail/:num', name:'detail', component : detailboard},
				{path : '/insert', component : insertboard},
				{path : '/modify/:num', name:'modify', component : modifyboard},
				{path : '/delete/:num', name:'delete', component : deleteboard},
		]});  
		var vm = new Vue({
			el : "#app",
			router
		});
	</script>
</body>
<jsp:include page="frame_footer.jsp" />
</html>