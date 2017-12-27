<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ShowToast</title>
<script src='<%= request.getContextPath()%>/js/jquery-3.2.1.min.js'></script>
<script src='<%= request.getContextPath()%>/js/toast.js'></script>
<link href="css/toast.css" rel="stylesheet" >
<script>
	$(document).ready(function(){
		var myOptions = { defaultText: 'this is a toast', displayTime: 3000, target: 'body' };
		var showtoast = new ToastBuilder(myOptions);
		$('#btn1').click(function(){
			showtoast("bt1toast..."); 
		});
		$('#btn2').click(function(){
			showtoast("bt2toast..."); 
		});
	});
</script>
</head>
<body>

<button id="btn1">bt1toast...</button>

<button id="btn2">bt2toast...</button>
</body>
</html>
