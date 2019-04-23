<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ja">
<head>
  <title>Typing Game</title>
  <link rel="stylesheet" href="./css/styles.css">
</head>
<body>
Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a>


  <p id="target">click to start</p>
  <p class="info">
    Letter count:<span id="score">0</span>,
    Miss count:<span id="miss">0</span>
    Time left:<span id="timer">0</span>
    </p>

    <script src="./js/main.js"></script>
</body>
</html>
