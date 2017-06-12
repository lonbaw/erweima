
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtm1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎进入农产品二维码溯源系统</title>
<link href="css/login.css" rel="stylesheet" type="text/css" />
<!-- <script src="js/jquery-1.8.3.min.js"></script> -->
<script src="js/login.js" type="text/javascript"></script>
<style type="text/css">
<!--
.STYLE1 {
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
.STYLE2 {
	font-size: 36pt;
	color: #00FFCC;
	font-style: italic;
}
-->
</style>
</head>

<body background="img/login-bg.png">

<script type="text/javascript">

		function search() {
			searchInfo = document.searchForm.searchInfo.value;
			if (searchInfo == "") {
				alert("查询失败！请重新输入!");
				document.searchForm.searchInfo.focus();
				return;
			} 

			document.searchForm.submit();
		}
	</script>
	
<div class="main-login">
	<div >
	<br/>
	  <div align="center" class="STYLE1">
	  
	    <h1 align="left" class="STYLE2">农产品二维码溯源系统</h1>
	  </div>
  </div>
	 <div>
      <form action="" method="post" id="login-form" name="login-form">
	</form>
	</form>
  </div>
      <form action="" method="post" id="login-form" name="login-form">
	</form>
</div> <br>
	  <form name="searchForm" method="post"action="<%=basePath %>servlet/SearchServlet">
	    <br/>
	    <br/>
        <div align="center">
        <td width="80%"><input name="searchInfo" type="text" class="login-info" value="" size="40"/>
          <input name="chaxun" type="button" class="login-btn" value="查询" onclick="search()"/> 
           
              
        </div>
	  </form>
	</div> 
	
	<div >
	<c:if test="${Proudct.xuLieHao != null }">
			<table width="400px" align="center" cellpadding="10" border="1px"
			bordercolor="#000000" cellspacing="0px"
			style="border-collapse:collapse">
			<caption>产品信息</caption>
				<tr>
					<td>种子名称:</td>
					<td>${Proudct.zhongZiMingCheng}</td>
				</tr>
				<tr>
					<td>播种时间:</td>
					<td>${Proudct.boZhongShiJian}</td>
				</tr>
				<tr>
					<td>播种面积:</td>
					<td>${Proudct.bozhongmianji}</td>
				</tr>
				<tr>
					<td>温度:</td>
					<td>${Proudct.wendu}</td>
				</tr>
				<tr>
					<td>施肥时间:</td>
					<td>${Proudct.shifeishijian}</td>
				</tr>
				<tr>
					<td>肥料名称:</td>
					<td>${Proudct.feiliaomingcheng}</td>
				</tr>
				<tr>
					<td>肥料用量:</td>
					<td>${Proudct.feiliaoyongliang}</td>
				</tr>
				<tr>
					<td>农药名称:</td>
					<td>${Proudct.nongyaomingcheng}</td>
				</tr>
				<tr>
					<td>农药喷洒时间:</td>
					<td>${Proudct.nongyaopensashijian}</td>
				</tr>
				<tr>
					<td>采摘批次:</td>
					<td>${Proudct.caizhaipici}</td>
				</tr>
				<tr>
					<td>生产时间:</td>
					<td>${Proudct.shengchanshijian}</td>
				</tr>
				<tr>
					<td>产地:</td>
					<td>${Proudct.chandi}</td>
				</tr>
			</table>
	</c:if>
	</div>
	
</body>
<div style="text-align:center;">

</div>
</html>
