
package com.servlet1;

import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class welcome extends HttpServlet{
		//处理get请求
		//req：用于获得客户端（浏览器）的信息
		//res：用于向客户端（浏览器）返回信息
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException{
	
		
		
		
		//解决中文乱码
		res.setCharacterEncoding("utf-8");
		
		
		//得到从logincheck传递的用户名，即uname
		String u=req.getParameter("uname");
		String p=req.getParameter("upass");
		
		//业务逻辑
		try {
			PrintWriter pw1 = res.getWriter();
			pw1.println("welcome !http");
			pw1.println("username ="+u);
			pw1.println("passwd ="+p);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

		//处理post请求
		//req：用于获得客户端（浏览器）的信息
		//res：用于向客户端（浏览器）返回信息
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException{
		this.doGet(req, res);
	}
}
