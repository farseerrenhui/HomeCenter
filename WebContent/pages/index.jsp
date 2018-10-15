<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
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
			<button onclick="login()">登录</button>
		</div>
	</form>
	<script>
		function login() {
			var loginname = $("input[name='account']").val();
			var pwd = $("input[name='pwd']").val();
			
			$.ajax({
				url : $("#base").val()+"/login",
				type : "post",
				data : {
		            'account':loginname,
		            'pwd':pwd,
		        },
				success : function(result) {
					if (result == "成功") {
						location.href = $("#base").val() + "/pages/main.jsp";
					} else {
						alert("用户名密码错误，登录失败");
					}
				},
				error : function(result) {
					alert("error"+result);
				}
			});
		}
	</script>
</body>
</html>