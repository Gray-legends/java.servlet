<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Java后端WebSocket的Tomcat实现</title>
     <link href="css/char.css" rel="stylesheet"/> 
    <style type="text/css">
    	#message{
    	width: 100%;
    	height: 300px;
    	background-color: white;
    	}
    	.text{
    	margin: auto;
    	text-align: center;
    	}
    
    </style>
</head>
<body>
    Welcome<br/>
    <button onclick="closeWebSocket()">关闭WebSocket连接</button>
    <hr/>
   <table width="100%" height="276" border="0" align="center"
		cellpadding="0" cellspacing="0">
		<tr>
			<td width="1000" height="200px" valign="top"
				background="images/main_bj.jpg" bgcolor="#FFFFFF"
				style="padding:5px; ">
				
				<div style="height:290px; overflow:hidden" id="message" >聊天内容</div>
			</td>
<td width="165" valign="top" bgcolor="#f6fded" id="online" style="padding:5px">在线人员列表</td>
		</tr>
	</table>
		<!--                  test聊天                      -->
		<div>
            <img src="http://www.php.cn/tpl/Index/Static/img/2017_index/logo.png" alt="">
            <p class="textM textBlue">PHP中文网推出的那个60天的成为大牛的课程你报了嘛？
            </p>
        </div>
        <div>
            <img src="http://www.php.cn/tpl/Index/Static/img/banner4.jpg" alt="">
            <p class="textM textWhite">当然报啦！你也赶快报吧！马上就截止了！PHP中文网的教育实力我还是很相信的！！
            </p>
        </div>
    
    
    <!-- <div id="message"></div>  -->
    
    
    <div class="text">
    <input id="text" type="text"/>
     <button onclick="send()" id="btn">发送消息</button> 
     
     <td width="19" align="left"><input name="scrollScreen"
					type="checkbox" class="noborder" id="scrollScreen"
					onClick="checkScrollScreen()" value="1" checked>
	</td>
	
     </div>
</body>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script>
			function checkScrollScreen(){
		if(!$("#scrollScreen").attr("checked")){
	    	$("#message").css("overflow","scroll");
	    }else{
	    	$("#message").css("overflow","hidden");
	        //当聊天信息超过一屏时，设置最先发送的聊天信息不显示
	        //alert($("#message").height());
	        $("#message").scrollTop($("#message").height()*2);
	    }
	    setTimeout('checkScrollScreen()',500);
	}
			
</script>
<script type="text/javascript">
    var websocket = null;
    //判断当前浏览器是否支持WebSocket
    if ('WebSocket' in window) {
        websocket = new WebSocket("ws://localhost:8080/websocket/websocket");
    }
    else {
        alert('当前浏览器 Not support websocket')
    }

    //连接发生错误的回调方法
    websocket.onerror = function () {
        setMessageInnerHTML("WebSocket连接发生错误");
    };

    //连接成功建立的回调方法
    websocket.onopen = function () {
        setMessageInnerHTML("WebSocket连接成功");
    }

    //接收到消息的回调方法
    websocket.onmessage = function (event) {
        setMessageInnerHTML(event.data);
    }

    //连接关闭的回调方法
    websocket.onclose = function () {
        setMessageInnerHTML("WebSocket连接关闭");
    }

    //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗口，server端会抛异常。
    window.onbeforeunload = function () {
        closeWebSocket();
    }

    //将消息显示在网页上
    function setMessageInnerHTML(innerHTML) {
    	
        document.getElementById('message').innerHTML += innerHTML + '<br/>';
    }

    //关闭WebSocket连接
    function closeWebSocket() {
        websocket.close();
    }

    //发送消息
      
    function send() {
    	var message = document.getElementById('text').value;
    	        websocket.send(message);
    	        document.getElementById('text').value="";
       
    }
    /*键盘回车事件*/
    document.onkeyup = function (e) {
        if (window.event)
            e = window.event;
        var code = e.charCode || e.keyCode;
        if (code === 13) {
            btn.onclick();
        }
    }
    
	
</script>
</html>