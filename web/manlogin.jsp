
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
    <title>My JSP 'manlogin.jsp' starting page</title>


  </head>
  <body background="img/4.jpg">
  <center>
  <h1>普通用户登陆界面</h1>
  <hr>
  <form method="post" action="ManLoginServlet">
  <table width="55%" border="1">
  <tr>
  <td>用户名：</td>
  <td><input type="text" name="manName"/></td>
  </tr>
  <tr>
  <td>密  &nbsp;&nbsp;&nbsp;码：</td>
  <td><input type="password" name="manPassword"/></td>
  </tr>
  <tr>
  <td><input type="reset" name="nook" value="重置"></td>
  <td><input type="submit" name="ok" value="进入"/></td>
  <td><a href="manjc.jsp">注册新用户</a></td>
  </tr>
  </table>
  </form>
  <a href="index.jsp">退出用户登录界面</a>
  </center>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
  </body>
  <h4><jsp:include page="tail.jsp" flush="true"/></h4>
</html>

