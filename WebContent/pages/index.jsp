<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HomeCenter登录页</title>
</head>
<body>
	<script src="${pageContext.request.contextPath}/js/login.js"
		type="text/javascript"></script>
	<form action="${pageContext.request.contextPath}/login">
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
		</div>
	</form>
</body>
</html>