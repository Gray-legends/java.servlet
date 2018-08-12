<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/char.css" rel="stylesheet"/>
</head>
<body>
<div>
	<%
		//页面每隔1秒刷新一遍
		response.setHeader("refresh", "1");
	%>
	<%-- <c:forEach items="${allMessage }" var="message">
		${message.userid }
		在${message.time }说：
		<div id="mes" class="mes"><font color="green">${message.info}</font></div>
	</c:forEach> --%>
	<%
	
	%>
			
        	<c:forEach items="${allMessage}" var="message">
        	<c:if test="${message.userid==obj.message.userid}">
			<div >
            <p class="textM textBlue" >${message.info }</p>
            <div style="clear: both;"></div><!-- 解决浮动bug -->
            </div>
              </c:if>
              
              <c:if test="${message.userid==message.userid}">
            <div>
            <p class="textM textWhite">${message.info }</p>
            </div>
            </c:if>
            </c:forEach>
          
            
            <c:forEach items="${allMessage}" var="message">
            </c:forEach>
            
    
</div>	
	
</body>
</html>