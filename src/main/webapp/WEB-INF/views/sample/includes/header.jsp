<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link href="css/styles.css" rel="stylesheet" type="text/css" />  -->
<title></title>
<link href="/resources/css/styles.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	crossorigin="anonymous"></script>
<style type="text/css">
body {
	text-align: center;
}

div#wrap {
	width: 100%;
	margin: 0 auto;
}

header, footer, nav, aside, section {
	/* border: 1px solid #FFFFFF; */
	margin: 5px;
	padding: 10px;
}

header {
	/* height: 15%; */
	/* background-color: red; */
	
}

nav {
	/* height: 15%; */
	/* background-color: orange; */
	
}

aside {
	/* background: goldenrod; */
	width: 130px;
	float: left;
	/* height: 50%; */
}

section {
	/* background: green; */
	/* width: 65%; */
	float: right;
	/* height: 50%; */
}

footer {
	/* height: 20%; */
	/* background-color: blue; */
	/* position: relative; */
	clear: both;
}

article {
	width: 90%;
	margin: 20px;
	background-color: #999;
}

div>header>span:first-child {
	float: left;
	margin-left: 20px;
}

div>header>img {
	float: right;
	margin-left: 10px;
}

div>nav>span {
	margin: 50px;
}

div>aside ul {
	list-style: none;
}

div>aside>ul {
	padding: 0;
	margin: 0;
}

div>aside>ul>li>ul {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}

div>aside>ul {
	/* position : relative; */
	
}

#roomBtn, #author, #product {
	border: 1px solid #90ee90;
	background-color: rgba(0, 0, 0, 0);
	color: #003458;
	padding: 5px;
	width: 100px;
	border-radius: 10px;
	outline: 0;
}

div>aside>ul>li>ul {
	display: none;
	/* position: absolute; */
}

#statusBtn, #room {
	background-color: rgba(0, 0, 0, 0);
	width: 100px;
	border: none;
	color: #003458;
	outline: 0;
}

#roomBtn:hover, #author:hover, #product:hover {
	background-color: #90ee90;
}

/* div>aside>ul>li:hover>ul {
	display: block;
} */
</style>
</head>
<body>
	<div id="wrap">
		<header>
			<span>FAIRY TOPIA</span> <span></span> <img
				src="/resources/img/profile.png" width="20px" height="20px"
				alt="프로필" title="프로필"> <img src="/resources/img/bell.png"
				width="20px" height="20px" alt="알림" title="알림">
		</header>
		<nav>
			<span><a href="">메이킹 스튜디오</a></span> <span><a href="">테일샵</a></span>
			<hr style="border: solid 1px skyblue;">
		</nav>
		<aside>
			<ul>
				<li><button type="button" id="roomBtn">작업실</button> <!-- <button type="button" id="btn"><img src="/resources/img/dropdown.png" width="15px" height="15px"></button> -->
					<ul>
						<li><a href=""><button type="button" id="statusBtn">전체
									작업현황</button></a></li>
						<li><a href=""><button type="button" id="room">작업실</button></a></li>
					</ul></li>
				<li><a href=""><button type="button" id="author">작가구하기</button></a></li>
				<li><a href=""><button type="button" id="product">작품구하기</button></a></li>
			</ul>
		</aside>