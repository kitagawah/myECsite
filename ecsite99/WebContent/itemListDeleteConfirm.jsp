<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品削除確認画面</title>

<script type="text/javascript">
	function submitAction(url){
		$('form').attr('action',url);
		$('form').submit();
	}
</script>

</head>
<body>
<h1>商品情報を削除しますか？</h1>
	<s:form>
		<input type = "button" value="削除" onclick="submitAction('ItemListDeleteCompleteAction')"/>
		<input type = "button" value="キャンセル" onclick="submitAction('ItemListAction')"/>
	</s:form>
</body>
</html>