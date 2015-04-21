function submitLoginForm() {
	// TODO 验证表单
	var loginForm = $("#loginForm");
	$.ajax({
		url:loginForm.attr("action"),   
        type:'post',                    
        data:loginForm.serialize(),
        success:function(data){
    		if (data["redirect"] != null) {
    			window.location = data["redirect"];
    		}else if (data["error"] != null) {
    			if (data["error"] == "password") {
    				$("#passwordMsg").html(data["message"]);
    			}else {
    				$("#accountIdMsg").html(data["message"]);
    			}
    		}
    	}
	});
}