<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body> 
	<form action="addMessage" target="content" method="post">
		发言：<input type="text" name="info" placeholder="请输入关键字" class="addMessage" id="info">
		<input value="发送" type="submit" id="sub" >
	</form>
</body>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		$("#sub").click(function(){
			var info=document.getElementById("info").value;
			if(info!=null){
				$.ajax({
					url:"addMessage",
					type="post",
					dataType:"json",
					success:function(obj){
						document.getElementById("info").value="";
					}
				});
				
			}else{
				alert("消息不能为空");
			}
			
		}); 
	</script>
</html>