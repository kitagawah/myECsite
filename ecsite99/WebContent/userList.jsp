<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<title>UserList画面</title>

<style type ="text/css">
	body{
	margin:0;
	padding:0;
	line-height:1.6;
	letter-spacing:1px;
	font-family:Verdana,Helvetica,sans-serif;
	font-size:12px;
	color:#333;
	background:#fff;
	}

	table{
	text-align:center;
	margin:0 auto;
	}

/* 	ecsite LAYOUT */

	#top{
	width:780px;
	margin:30px auto;
	border:1px solid #333;
	}

	#header{
	width:100%;
	height:80px;
	background-color:black;
	}

	#main{
	width:100%;
	height:500px;
	text-align:center;
	}

	#footer{
	width:100%;
	height:80px;
	background-color:black;
	clear:both;
	}

	#text-center{
	display:inline-block;
	text-align:center;
	}
</style>

<script type="text/javascript">
	function submitAction(url){
		$('form').attr('action',url);
		$('form').submit();
	}
</script>
</head>
<body>
<s:if test="userListDTOList == null">
	<h3>登録されているユーザは存在しません</h3>
</s:if>

<s:elseif test="message == null">
	<h3>登録ユーザー</h3>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>LoginID</th>
			<th>UserName</th>
			<th>LoginPass</th>
			<th>登録日</th>
			<th>更新日</th>
		</tr>

		<s:iterator value="userListDTOList">
		<tr>
			<td><s:property value="id"/></td>
			<td><s:property value="loginId"/></td>
			<td><s:property value="userName"/></td>
			<td><s:property value="loginPass"/></td>
			<td><s:property value="insertDate"/></td>
			<td><s:property value="updateDate"/></td>
		</tr>
		</s:iterator>
	</table>
</s:elseif>

<s:if test="message !=null">
	<h3><s:property value="message"/></h3>
</s:if>

	<s:form>
		<input type = "button" value="管理者画面へ" onclick="submitAction('AdminAction')"/>
		<input type = "button" value="削除" onclick="submitAction('UserListDeleteConfirmAction')"/>
	</s:form>

</body>
</html>