<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery UI Dialog 彈跳視窗</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://jqueryui.com/resources/demos/external/jquery.bgiframe-2.1.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script>
$(function() {
  $( "#dialog" ).dialog({
    autoOpen: false,
    height:150,
    width:300
  });
  $( "#opener" ).click(function() {
    $( "#dialog" ).dialog( "open" );
    return false;
  });
});
</script>

</head>
<body>
	<h1>實作jQueryUIDialog彈跳視窗功能</h1>
	<div id="dialog" title="視窗標題">
	  <p>視窗文字</p>
	</div>
	<button id="opener">OPEN</button> 
</body>
</html>