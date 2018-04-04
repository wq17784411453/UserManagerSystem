
package com.servlet1;
import javax.servlet.http.*;
import java.io.*;

public class login extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) {
		//业务逻辑
		try {
			
			//中文乱码
			res.setContentType("text/html;charset=utf-8");
			PrintWriter pw = res.getWriter();
			
			//在servlet中显示图片
			pw.println("<img src=imgs/index.jpg><br>");
			
			//返回登陆界面
			pw.println("<html>");
			pw.println("<body>");
			//得到error信息
			String info=req.getParameter("info");
			
			if(info !=null) {
				pw.println("<h1>你的用户名或者密码错误</h1>");
			}
			pw.println("<h1>登陆界面</h1>");
			pw.println("<form action=logincheck method=post>");
			pw.println("用户名：<input type=text name=username><br>");
			pw.println("密码：<input type=password name=passwd><br>");
			pw.println("<input type=checkbox name=keep value=2>两周内不再重新登陆<br>");
			pw.println("input：<input type=submit value=login><br>");
			pw.println("</form>");
			pw.println("</body>");
			pw.println("</html>");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

		//处理post请求
		//req：用于获得客户端（浏览器）的信息
		//res：用于向客户端（浏览器）返回信息
	public void doPost(HttpServletRequest req,HttpServletResponse res) {
		this.doGet(req, res);
	}

}
