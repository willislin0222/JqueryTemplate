<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jquery表格收放功能.jsp</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function(){
		$("a").click(function(){
			var _this= $(this).attr("href");
			if($(_this).css("display")=="none"){
				$(_this).slideDown();
				$(this).html("-");
			}else{
				$(_this).slideUp();
				$(this).html("+");
			}
			return false;
		});
	});
</script>
<style type="text/css">
		body{font-size:12px;}
		a{
		color:#333333;
		text-decoration: none;
		font-size:15px;
		display:block;
		}
		table tr td{border:solid 1px #ccc;}
		div{padding:10px 30px;}
</style>
</head>
<body>
<H1>Jquery表格收放功能.jsp</H1>
<table width="500" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="26" align="center" bgcolor="#eeeeee"><a href="#tr1">+</a></td>
	  	<td width="500">訂單編號</td>
	  	<td width="500">金額</td>
	  	<td width="500">下單日期</td>
	  	<td width="500">取消</td>
 	</tr>
 	<tr>
  		<td colspan="5" class="content">
           	<div id="tr1" style="display:none;">訂單01明細內容
				<table width="500" border="0" cellspacing="0" cellpadding="0">
				<tr>
				  	<td width="500">訂單編號</td>
				  	<td width="500">金額</td>
				  	<td width="500">下單日期</td>
				  	<td width="500">取消</td>
			 	</tr>
			 	<tr>
				  	<td width="500">訂單編號</td>
				  	<td width="500">金額</td>
				  	<td width="500">下單日期</td>
				  	<td width="500">取消</td>
			 	</tr>
			 	
			 </table>        

           	</div>
			
        </td>
   	</tr>
 </table>
</body>
</html>