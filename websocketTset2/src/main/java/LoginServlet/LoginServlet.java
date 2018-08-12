package LoginServlet;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取用户输入
				String userid=request.getParameter("userid");
				System.out.println(userid);
				
				//获取application 对象
				ServletContext application =this.getServletContext();
				//获取application对象中的user
				ArrayList<String> users=(ArrayList<String> )application.getAttribute("users");
				//判读用户是否存在
				if(users!=null&&users.contains(userid)){
					request.setAttribute("errorinfo", "用户"+userid+"已经存在");
					RequestDispatcher rd;
					rd=request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
				}else{
					//如果当前的application中没有user,初始化user对象
					if(users==null){
						users=new ArrayList<String>();
					}
					users.add(userid);
					application.setAttribute("userid", userid);
					//为每一个用户设置id
					HttpSession session =request.getSession(true);
					session.setAttribute("userid", userid);
					response.sendRedirect("chat.jsp");
				}
			}

}













