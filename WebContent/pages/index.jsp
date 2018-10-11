<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/login.js" type="text/javascript"></script>
<title>HomeCenter登录页</title>
</head>
<body>
	<input type="hidden" id="base" value="${pageContext.request.contextPath}"/>
	<!--  action="${pageContext.request.contextPath}/login" -->
	<form id="form_login">
		<div class="form-body">
			<div>
				<input type="text" name="account" />
			</div>
			<div>
				<input type="password" name="pwd" />
			</div>
			<div>
				<button type="submit">登录</button>
			</div>
			<button onclick="login()">button login</button>
		</div>
	</form>
</body>
</html>