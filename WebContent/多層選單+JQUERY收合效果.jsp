<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>多層選單+JQUERY收合效果功能.jsp</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function(){
		$("li:has(ul)").click(function(e){
			if(this==e.target){
				if($(this).children().is(":hidden")){
					//子項是隱藏的則顯示
					$(this).css("list-style-image","url(minus.gif)")
					.children().show();
				}else{
					//子項是顯示的則隱藏
					$(this).css("list-style-image","url(plus.gif)")
					.children().hide();
				}
			}
			return false;    //避免不必要的事件混繞
		}).css("cursor","pointer").click();    //手的符號
	
		//對於沒有子項的選單，一律表示
		$("li:not(:has(ul))").css({
			"cursor":"default",
			"list-style-image":"none"
		});
	});
</script>
</head>
<body>
	<H1>多層選單+JQUERY收合效果功能.jsp</H1>
	<ul>
	<li>第一層選單</li>
	<li>第二層有樹狀的
		<ul>
			<li>樹狀選單</li>
		</ul>
	</li>

	<li>第三層(兩階層)
		<ul>
			<li>3-1階層的
				<ul>
					<li>3-2階層的</li>
				</ul>
			</li>
		</ul>
	</li>
</ul>	
</body>
</html>