
package com.servlet1;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class logincheck extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) {
		
		Connection ct=null;
		Statement sm=null;
		ResultSet rs=null;
		
		//业务逻辑
		try {
			//接受用户名和密码
			String u=req.getParameter("username");
			String p=req.getParameter("passwd");
			
			//连接数据库
			Class.forName("com.mysql.jdbc.Driver");
			//得到连接
			ct=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/servlet?useSSL=false","root","wq123456789");
			
			//创建一个statement
			sm=ct.createStatement();
			rs=sm.executeQuery("select * from users where username='"+u+"'");
			
			
			//验证
			
			if(rs.next()){
				//说明用户是 存在的
				String dbpasswd=rs.getString(1);
				
					if(dbpasswd.equals(p)) {
						
						HttpSession hs=req.getSession(true);
						//修改session的存在时间
						//hs.setMaxInactiveInterval(20);
						hs.setAttribute("yx", "yx");
						
						//跳转到wel
						res.sendRedirect("welcome?uname="+u+"&upass="+p);
						//uname的名字自己取
						
					}
				
			}else {
				//说明用户不存在
				res.sendRedirect("login");
			}
				
			/*if(u.equals("yangxiong")&&p.equals("yangxiong"))
			if(rs.next()){
				
				//这是合法的
				//将验证成功的信息，写入session
				//第一步时得到session
				HttpSession hs=req.getSession(true);
				//修改session的存在时间
				hs.setMaxInactiveInterval(20);
				hs.setAttribute("yangxiong", "yangxiong");
				
				//跳转到wel
				res.sendRedirect("welcome?uname="+u+"&upass="+p);
				//uname的名字自己取
			}
			else{
				//这是不合法的
				//跳转
				res.sendRedirect("login");//写你要跳转到的那个servlet的url
			}*/
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(rs !=null) {
				rs.close();
				}
				if(sm !=null) {
				sm.close();
				}
				if(ct !=null) {
				ct.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

		//处理post请求
		//req：用于获得客户端（浏览器）的信息
		//res：用于向客户端（浏览器）返回信息
	public void doPost(HttpServletRequest req,HttpServletResponse res) {
		this.doGet(req, res);
	}

}
