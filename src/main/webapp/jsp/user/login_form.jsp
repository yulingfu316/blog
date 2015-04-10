<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Login Form</title>
  <script type="text/javascript" src="Ext/adapter/ext/ext-base.js"></script>
  <script type="text/javascript" src="Ext/ext-all.js"></script>
  <link rel="stylesheet" type="text/css" href="Ext/resources/css/ext-all.css"/>
  <script type="text/javascript">
    Ext.onReady(function(){
    	Ext.QuickTips.init();
    	Ext.form.Field.prototype.msgTarget = "side";
    	var submitButton = new Ext.Button({
    		text: "Sign in",
    		handler: function(){
    			if(form.getForm().isValid()){
    				Ext.Msg.alert("Message", "Login Successfully!");
    			}
    		}
    	});
    	var resetButton = new Ext.Button({
    		text: "Reset",
    		handler: function(){
    			form.getForm().reset();
    		}
    	});
    	var usernameTextField = new Ext.form.TextField({
    		width: 150,
    		allowBlank: false,
    		blankText: "Please input username!",
    		maxLength: 20,
    		maxLengthText: "Less than or 20 words!",
    		name: "username",
    		fieldLabel: "username"
    	});
    	var passwordTextField = new Ext.form.TextField({
        width: 150,
        allowBlank: false,
        blankText: "Please input password!",
        maxLength: 20,
        maxLengthText: "Less than or 20 words!",
        inputType: "password",
        name: "password",
        fieldLabel: "password"
      });
    	var checkcodeTextField = new Ext.form.TextField({
    		width: 76,
    		allowBlank: false,
    		blankText: "Please input checkcode!",
    		maxLength: 4,
    		maxLengthText: "4 words please!",
    		id: "checkcode",
    		fieldLabel: "checkcode"
    	});
    	var form = new Ext.form.FormPanel({
    		url: "/login",
    		labelAlign: "right",
    		labelWidth: 60,
    		frame: true,
    		buttonAlign: "center",
    		bodyStyle: "padding:6px 0px 0px 15px",
    		items: [usernameTextField, passwordTextField, checkcodeTextField],
    		buttons: [submitButton, resetButton]
    	});
    	var window = new Ext.Window({
    		title: "Login...",
    		plain: true,
    		width: 300,
    		height: 174,
    		resizable: false,
    		shadow: true,
    		modal: true,
    		closable: false,
    		animCollapse: true,
    		draggable: false,
    		items: form
    	});
    	window.show();

    	// checkcode
    	var checkcode = Ext.getDom("checkcode");
    	var checkImg = Ext.get(checkcode.parentNode);
    	checkImg.createChild({
    		tag: "img",
    		src: "checkcode",
    		align: "absbottom",
    		style: "padding-left:23px;cursor:pointer;",
    		stateEvents: ["onclick", "refresh"]
    	});
    	var refresh = function(){
          Ext.MessageBox.alert("1","2");
        }
    });
  </script>
</head>
<body>
</body>
</html>