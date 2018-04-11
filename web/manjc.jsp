
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
  <title>My JSP 'manjc.jsp' starting page</title></head>
<body background="img/4.jpg">
    <center>
  <h1>普通用户注册</h1>
  <hr>
  <form method="post" action="ManJcServlet">
<table width="50%" border="1">
  <tr>
  <td>用户名：</td>
  <td><input type="text" name="manName"/></td>
  </tr>
  <tr>
  <td>密 &nbsp;&nbsp; 码：</td>
  <td><input type="password" name="manPassword"/></td>
  </tr>
  <tr>
  <td><input type="reset" name="nook" value="重置"></td>
  <td><input type="submit" name="ok" value="注册"/></td>
  </tr>
  </table>
  </form>
  <a href="manlogin.jsp">返回</a>
  </center>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
  </body>
</html>
<h4><jsp:include page="tail.jsp" flush="true"/></h4>
