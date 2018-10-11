/*登陆*/
var Login = function() {
	var form1 = $('#form_sample_1');
    var error1 = $('.alert-danger', form1);
    return {
        sendData:function(){//提交数据
        	var loginname = $("input[name='account']").val();
        	var pwd = $("input[name='pwd']").val();
        	
        	alert("go");

        	if(loginname !="" && pwd!=""){
        		$.ajax({
            		url:$("#form_sample_1").attr("action"),
            		type: "post",
            		//data:$("#form_sample_1").serialize(),
            		//data:{"username":username,"pwd":$.md5(pwd)},
            		data:{"loginname":loginname,"password":pwd},
            		success:function(result){
            			//console.log(result);
            			if(result=="成功"){
                			location.href=$("#base").val()+"/pages/main.jsp";
                		}else{
                	        error1.html("用户名密码错误，登录失败");
                	        error1.show();
                		}
            			
            		},
            		error:function(err){
            			error1.html("系统错误，登录失败");
            	        error1.show();
            		}
            	});
        	}else{
        		error1.html("请填写用户名和密码");
    	        error1.show();
        	}
        }
    };

}();
function save(){
	Login.sendData();
}