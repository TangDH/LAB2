<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library</title>
</head>
<link href="next.css" type="text/css"
rel="stylesheet" />
<body>



<table style="font-family:宋体;color:black;font-size:24px;" align="center">  
	<tr>  
	<td>作者作品</td>
	</tr>
	<s:iterator value="BookTitle" var="b" >  
	<tr>  
	<td>
	<s:url action="detail" var="Link">
			<s:param name="Title"><s:property value="b"/></s:param>
	</s:url>
	<a href="${Link}"><s:property value="b"/></a>
	</td> 
	</tr>  
	<br/>  
	</s:iterator>  
</table> 
</body>
</html>