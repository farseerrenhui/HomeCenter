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