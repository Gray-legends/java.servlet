package AddMessageServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Message.Message;
import MessageService.MessageService;
public class AddMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//从request中取出用户的个人信息
				HttpSession session =request.getSession();
				String userid =(String)session.getAttribute("userid");
				//从request中取出新增用户的聊天信息
				String info =request.getParameter("info");
				//info=new String (info.getBytes("utf-8"));
				//取出所有聊天信息
				ServletContext application =this.getServletContext();
				ArrayList <Message>allMessage =(ArrayList<Message>)application.getAttribute("allMessage");
				//创建所有的聊天对象
				Message message=new Message(userid,info);
				//创建业务对象
				MessageService Mservice =new MessageService(allMessage);
				//调用业务层逻辑
				Mservice.addMessages(message);
				 // 保存更新后的消息
				        application.setAttribute("allMessage", Mservice.getAllessage());
				
			         // 转向聊天页面
			         response.sendRedirect("content.jsp");
			     info =null;
			     System.out.println(info);
				
	}

}













