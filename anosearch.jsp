<%@ page language="java" contentType="text/html; charset=gb2312" pageEncoding="gb2312"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>

</head>
<body background="<%=basePath%>js/login.js">

<script type="text/javascript">
window.onload = function(){
        document.body.style.backgroundColor="#9393FF";
    }
		function search() {
			searchInfo = document.searchForm.searchInfo.value;
			if (searchInfo == "") {
				alert("查询编号不正确！请重新输入！");
				document.searchForm.searchInfo.focus();
				return;
			} 

			document.searchForm.submit();
		}
	</script>
<div>

<form name="searchForm" method="post"action="<%=basePath %>servlet/SearchServlet">
		<table width="420px" align="center" cellpadding="10" border="1px"
			bordercolor="#000000" cellspacing="0px"
			style="border-collapse:collapse">
			<tr>
				<td>请输入产品序列号:</td>
				<td><input type="text" value="${Proudct.xuLieHao }" name="searchInfo" /></td>
				<td><input name="chaxun" type="button"  value="查询" 	onclick="search()" />
			</tr>
		</table>		
	</form>
	</div><br>
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
</html>