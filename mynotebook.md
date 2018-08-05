java 使用


Java语言中，每个类都有一个函数是getClass（），这个函数可以返回该保存该类型的类型类的一个实例的引用，这个类型类的实例无法直接接受但是我们可以用Object接收，

#数据库导入文件

	source e:/t_dict.sql 路径文件名

#git 入门指令
	学习地址：https://www.cnblogs.com/Chenshuai7/p/5486278.html
	http://baijiahao.baidu.com/s?id=1599427112415423341&wfr=spider&for=pc

## 打开Git Bash

	 首先配置自己的身份，这样在提交代码的时候就能知道是谁提交的
	输入git config --global user.name "名字"
	git config --global user.email "邮箱地址"
	$ git config --global user.name "jack"
	$ git config --global user.email "1304799979@qq.com"

查看所有配置
	$ git config --list
	
初始化
	$ git init 


文件跟踪
	$ git add *.c
	$ git add README
	$ git commit -m 'initial project version'
仓库克隆
	克隆仓库的命令格式为 git clone [url]。比如，要克隆 Ruby 语言的 Git 代码仓库 Grit，可以用下面的命令：
	https://github.com/login-jack/cici.git
	
	
	git add -A
	git commit -m"注释"

钥匙
	ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
	ssh-add ~/.ssh/id_rsa
	
	git  remote add origin git@github.com:login-jack/cici.git
	git push -u origin master
	
	[](https://github.com/login-jack/cici.git)
	
	git remote add origin https://github.com/login-jack/cici.git
	
先删除远程 Git 仓库
[](https://blog.csdn.net/top_code/article/details/50381432)
$ git remote rm origin
[](https://www.cnblogs.com/zlxbky/p/7727895.html)
	
	
	
	
	