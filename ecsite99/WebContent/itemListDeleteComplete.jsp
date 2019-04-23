<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>商品削除完了</title>

<script type="text/javascript">
	function submitAction(url){
		$('form').attr('action',url);
		$('form').submit();
	}
</script>

</head>
<body>
<h1>商品情報の削除が完了しました</h1>

<s:form>
	<input type = "button" value="管理者画面へ" onclick="submitAction('AdminAction')"/>
</s:form>
<%-- 			<s:if test="session.message !=null"> --%>
<%-- 				<h3><s:property value="session.message"/></h3> --%>
<%-- 			</s:if> --%>
</body>
</html>