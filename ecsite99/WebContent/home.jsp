<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<title>Home画面</title>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* 	ecsite LAYOUT */
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

/* #header { */
/* 	width: 100%; */
/* 	height: 80px; */
/* 	background-color: black; 	 */
/* 	background-image: url(./img/header.jpg); */
/* 	background-size: cover; */
/* 	background-position: center; */
/* } */
#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: #AAA;
	clear: both;
}

#text-center {
	display: inline-block;
	text-align: center;
}

/* Global Menu */
header {
/* 	margin-bottom: 13em; */
	position: relative;
	width: 100%;
	background-color: #AAA;
}

ul>li {
	display: inline-block;
}

ul>li>a {
	padding: 15px 30px;
	display: block;
	font-size: 0.8em;
	text-transform: uppercase;
	letter-spacing: .2em;
}

ul>li>span {
	margin-left: 1.2em;
}

ul>li:hover>a {
	background-color: #efefef;
	color: #444;
}

/* Submenu */
ul li ul {
 	position: absolute;
/*  	top: 55px; */
 	left: 0;
}

ul li ul li {
	display: block;
}

ul li ul li a {
	background-color: #efefef;
	color: #444;
}

ul li ul li a:hover {
	background-color: #ddd;
}

.sample01 ul li ul{
	display: none;
}
.sample01 ul li:hover ul{
	display: block;
}

</style>

</head>
<body>
<header class="sample01">
    <ul>
        <li><a href="#">Menu01 <span>▼</span></a>
            <ul>
				<li><a href='<s:url action="AdminAction"/>'>管理者</a></li>
				<li><a href='<s:url action="UserCreateAction"/>'>新規登録</a></li>
				<li><a href='<s:url action="LoginAction"/>'>Login</a>
				<li><a href='<s:url action="TypingAction"/>'>Typing</a></li>
				<s:if test="#session.id!=null">
					<li><a href='<s:url action="LogoutAction"/>'>Logout</a></li>
				</s:if>
			</ul>
        </li>
        <li><a href="#">Menu02</a></li>
        <li><a href="#">Menu03</a></li>
    </ul>
</header>

	<div id="main">
		<div id="top">
			<p>Home</p>
		</div>



		<div id="text-center">
			<s:form action="HomeAction">
				<s:submit value="商品購入" />
			</s:form>

			<s:if test="#session.id!=null">
				<p>
					ログアウトする場合は<a href='<s:url action="LogoutAction"/>'>こちら</a>
			</s:if>
		</div>
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>