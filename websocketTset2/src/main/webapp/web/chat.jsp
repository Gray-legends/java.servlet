<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

	<frameset rows="*,20%">
		<frame name="content" src="content.jsp">
		<frame name="sendMessage" target="content" src="sendMessage.jsp">
		<noframes>
			<body>
				<p>此网页使用了框架，但你的浏览器不支持框架</p>
			</body>
		</noframes>
	</frameset>

</html>