<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>My JSP 'usermanage.jsp' starting page</title>

  </head>
  
  <body background="img/1.jpg">
  <center>
  <h1>管理员界面</h1><hr>
  <br><br><br>
  <table style="border-collapse:separate; border-spacing:20px;">
  <tr>
  <td><a style="text-decoration:none;" href="jinru.jsp"><h2>管理会员资料</h2></a></td>
  </tr>
  <tr>
  <td><a style="text-decoration:none;" href="manageman.jsp"><h2>管理用户</h2></a></td>
  </tr>
  <tr>
  <td><a style="text-decoration:none;" href="UserPerishServlet"><h2>注销本管理员</h2></a></td>
  </tr>
  <tr>
  <td><a style="text-decoration:none;" href="userlogin.jsp"><h2>退出</h2></a></td>
  </tr>
  </table>
  </center>
<br><br><br><br><br>
<br><br><br><br><br>
  </body>
</html>
<h4><jsp:include page="tail.jsp" flush="true"/></h4>