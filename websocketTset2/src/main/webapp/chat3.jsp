<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>PHP中文网</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
 
        /*chrome下能隐藏滚动条*/
        ::-webkit-scrollbar{
            display: none;
        }
 
        @keyframes text {
            0% {
                top:50px;
                opacity: 0;
            }
            100%{
                top: 0;
                opacity: 1;
            }
        }
        body{
            background-color: #e1e1e1;
        }
        .container{
            position: relative;
            height: 700px;
            width: 400px;
            margin: 50px auto;
            background-color: #f0f0f0;
            border-radius: 6px;
            overflow: hidden;
        }
        .main{
            overflow: auto;
            border-bottom: 60px solid #fff;
            padding: 20px 10px;
            width: 100%;
            height: 100%;
        }
 
        /*这个伪元素解决不同浏览器padding裁剪内容不一致的问题！！*/
        .main:after{
            display: block;
            content: "";
            background-color: transparent;
            width: 100%;
            height: 50px;
        }
        .lineBox{
            overflow: hidden;
            min-height: 40px;
            clear: both;
            position: relative;
 
        }
        .imgWhite{
            position: absolute;
 
            left: 10px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }
        .imgBlue{
            position: absolute;
            right: 10px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }
        .textWhite{
 
            /*!*解决连续字母不换行的问题*!
            max-width: 300px;
            word-wrap:break-word;*/
 
            min-height: 40px;
            margin-left: 60px;
            margin-right: 10px;
            margin-bottom: 15px;
            padding: 10px 10px;
            display: inline-block;
            position: relative;
            border-radius: 6px;
            background-color: #ffffff;
            box-shadow: 0 5px 15px 0 rgba(0, 0, 0, 0.05);
        }
        .textWhite:before{
            display: block;
            content: "";
            width: 0;
            height: 0;
            position: absolute;
            left:-6px;
            top: 14px;
            border-top: solid 6px transparent;
            border-right: 6px solid #fff;
            border-bottom: solid 6px transparent;
        }
        .textBlue{
            min-height: 40px;
            position: relative;
            float: right;
            margin-left: 10px;
            margin-right: 60px;
            margin-bottom: 15px;
            padding: 10px 10px;
            display: inline-block;
            border-radius: 6px;
            background-color: #2970ff;
            box-shadow: 0 5px 15px 0 rgba(41, 75, 255, 0.3);
            color: #fff;
        }
        .textBlue:before{
            display: block;
            content: "";
            width: 0;
            height: 0;
            position: absolute;
            right:-6px;
            top: 14px;
            border-top: solid 6px transparent;
            border-left: 6px solid #2970ff;
            border-bottom: solid 6px transparent;
        }
        .inputBox{
            position: absolute;
            bottom: 0;
            left: 0;
            height: 60px;
            line-height: 60px;
            width: 100%;
            background-color: #ffffff;
 
        }
        .img1{
            margin-left: 10px;
            margin-top: -3px;
            display: inline-block;
            vertical-align: middle;
            width: 40px;
            height: 40px;
            box-sizing: border-box;
            background-color: #fff;
            border-radius: 6px;
        }
        .textBox{
            display: inline-block;
            line-height: 60px;
            right: 100px;
            left: 60px;
            position: absolute;
        }
        #text{
            display: inline-block;
            font-size: 16px;
            padding: 0 0 0 10px;
            width: 100%;
            height: 40px;
            border-radius: 6px;
            border: 1px solid #e1e1e1;
        }
        #btn{
            cursor: pointer;
            font-size: 16px;
            margin: 10px;
            display: inline-block;
            vertical-align: middle;
            float: right;
            height: 40px;
            box-sizing: border-box;
            width: 80px;
            border-radius: 6px;
            border: 1px solid #e1e1e1;
            background-color: #fff;
            outline: none;
        }
        #btn:hover{
            color: #fff;
            background-color: #2970ff;
        }
        #btn:active{
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2) inset;
            background-color: #3668ff;
        }
    </style>
    <script>
        window.onload = function () {
            var img1 = document.getElementsByClassName("img1");
            var imgWhite = document.getElementsByClassName("imgWhite");
            var imgBlue = document.getElementsByClassName("imgBlue");
            var textM = document.getElementsByClassName("textM");
            var textWhite = document.getElementsByClassName("textWhite");
            var textBlue = document.getElementsByClassName("textBlue");
            var text = document.getElementById("text");
            var btn = document.getElementById("btn");
            var lineBox = document.getElementsByClassName("lineBox");
            var main = document.getElementsByClassName("main");
 
            /*用来判断猫和狗的状态*/
            var onOff = true;
 
            /*页面载入时聊天内容自动滚动到最下面*/
            main[0].scrollTop = main[0].scrollHeight;
 
            /*切换猫狗角色*/
            img1[0].onclick = function () {
                if (onOff == true) {
                    this.src = "http://www.php.cn/tpl/Index/Static/img/2017_index/logo.png";
                    onOff = false
                } else {
                    this.src = "http://www.php.cn/tpl/Index/Static/img/banner4.jpg";
                    onOff = true
                }
            };
 
            btn.onclick = function () {
 
                /*先判断猫还是狗，然后往里面添加内容*/
                if (onOff == true) {
                    main[0].innerHTML += "<div class=\"lineBox\">" + "<img class=\"imgWhite\">" + "<p class=\"textM textWhite\">" + "</p>" + "</div>";
                    imgWhite[imgWhite.length - 1].src = img1[0].src;
                    textWhite[textWhite.length - 1].innerHTML = text.value;
                } else {
                    main[0].innerHTML += "<div class=\"lineBox\">" + "<img class=\"imgBlue\">" + "<p class=\"textM textBlue\">" + "</p>" + "</div>";
                    imgBlue[imgBlue.length - 1].src = img1[0].src;
                    textBlue[textBlue.length - 1].innerHTML = text.value;
                }
 
                /*清除原有动画*/
                for (var i=0;i<textM.length;i++)
                {
                    textM[i].style.animation = "";
                    textM[i].style.animationFillMode = "";
                }
 
                /*给最新的一条聊天记录绑定CSS3帧动画*/
                textM[textM.length - 1].style.animation = "text 0.3s";
                textM[textM.length - 1].style.animationFillMode = "forwards";
                text.value = "";
 
                /*2个滚动方法*/
                /*lineBox[lineBox.length - 1].scrollIntoView();*/
                main[0].scrollTop = main[0].scrollHeight;
            };
 
            /*键盘回车事件*/
            document.onkeyup = function (e) {
                if (window.event)
                    e = window.event;
                var code = e.charCode || e.keyCode;
                if (code === 13) {
                    btn.onclick();
                }
            }
        }
    </script>
</head>
<body>
<div>
    <div>
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
        <div>
            <img src="http://www.php.cn/tpl/Index/Static/img/2017_index/logo.png" alt="">
            <p class="textM textBlue">嗯嗯~这个我知道，我也赶紧去报名了！！
            </p>
        </div>
    </div>
    <div>
        <img src="http://www.php.cn/tpl/Index/Static/img/banner4.jpg" alt="">
        <div>
            <input type="text" id="text">
        </div>
        <input type="button" value="发送" id="btn">
    </div>
 
</div>
</body>
</html>