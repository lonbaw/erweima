<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form name="RegisterForm" method="post" action="RegisterServlet">
   注册<br>
   用户名：<input name="id" type="text" size="25" ><br>
   密码：<input name="password" type="password" size="25" ><br>
   <td width="31%" height="35" class="login-text02">身&nbsp;&nbsp;份：<br />
							</td>
							<td width="69%"><label> <select style="WIDTH: 185px"
									name="leixing" id="shenfen">
										<option name="leixing" value="xitongguanliyuan">系统管理员</option>
										<option name="leixing" value="suyuanqiye" selected="selected">溯源企业</option>
										<option name="leixing" value="jianguanbumen">监管部门</option>
<!-- 										
				
 -->
								</select>
 <input name="queren"type="submit" class="right-button01" value="确认"/>
   </form>
  </body>
</html>
