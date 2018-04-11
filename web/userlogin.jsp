
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



<html>
  <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
    <title>My JSP 'userlogin.jsp' starting page</title>
  </head>
  
<body background="img/1.jpg">
  <center>
  <h1>管理员登陆界面</h1>
  <hr>
  <form action="UserLoginServlet"  method="post">
 <table width="55%" border="1">
  <tr>
  <td>管理员：</td>
  <td><input type="text" name="userName"/></td>
  </tr>
  <tr>
  <td>密  &nbsp;&nbsp;&nbsp;码：</td>
  <td><input type="password" name="userPassword"/></td>
  </tr>
  <tr>
  <td><input type="reset" name="nook" value="重置"></td>
  <td><input type="submit" name="ok" value="进入"/></td>
  
  </tr>
  </table>
  </form>
  <a href="index.jsp">退出管理员界面</a>
  </center>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
  </body>
</html>
<h4><jsp:include page="tail.jsp" flush="true"/></h4>
