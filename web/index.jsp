
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>My JSP 'index.jsp' starting page</title>
<style type="text/css">
.one
{
	font-size:32px;
	font-weight:bold ;
    color : 000000;
	
}
.two
{
	text-decoration:none;
}
.three
{
	font-size:40px;
	font-weight:bold ;
    color : 000000;
	
}
.four
{
	background-image: url("img/index.jpg"); 
	background-repeat:no-repeat;
}
</style>
	
  </head>
<body  >
<center>**************************************************************</center>
<h1><center><span class="three">羽协会员管理系统</span></center></h1>
<center>**************************************************************</center>
<br><br><br><br><br><br>
<center>
<table>
<tr>
<td><a href="userlogin.jsp" class="two"><span class="one">管&nbsp;&nbsp;理&nbsp;&nbsp;员&nbsp;&nbsp;进&nbsp;&nbsp;入</span></a></td>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr><tr></tr><tr></tr>
<tr>
</tr>
<tr>
<td><a href="manlogin.jsp" class="two"><span class="one">普&nbsp;&nbsp;通&nbsp;&nbsp;用&nbsp;&nbsp;户&nbsp;&nbsp;进&nbsp;&nbsp;入</span></a></td>
</tr>
</table>
</center>
<br><br><br><br><br><br><br>


  </body>
   <h4><jsp:include page="tail.jsp" flush="true"/></h4>
</html>



