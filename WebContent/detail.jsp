<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="detail.css" type="text/css"
rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library</title>
</head>

<body>
<h3 align = "center">详细信息</h3>
<table border="1"style="border-collapse:collapse;" align="center">  
<tr >  
<td align="center" style="width:120px; height: 21px;" valign="middle">ISBN</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="ISBN"/></td>  
</tr>  
<tr>  
<td align="center" style="width:120px; height: 21px;" valign="middle">书名</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="Title"/></td>  
</tr>  
<tr>  
<td align="center" style="width:120px; height: 21px;" valign="middle">价格</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="Price"/></td>  
</tr>  
<tr>  
<td align="center" style="width:120px; height: 21px;" valign="middle">作者ID</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="AuthorId"/></td>  
</tr>  
<tr>  
<td align="center" style="width:120px; height: 21px;" valign="middle">作者</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="Name"/></td>  
</tr> 
 
<tr>  
<td align="center" style="width:120px; height: 21px;" valign="middle">年龄</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="Age"/></td>  
</tr>  
<tr>  
<td align="center" style="width:120px; height: 21px;" valign="middle">国籍</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="Country"/></td>  
</tr> 
<tr>  
<td align="center" style="width:120px; height: 21px;" valign="middle">出版商</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="Publisher"/></td>  
</tr> 
<tr>  
<td align="center" style="width:120px; height: 21px;" valign="middle">出版日期</td>  
<td align="center" style="width:120px; height: 21px;" valign="middle"><s:property value="PublishDate"/></td>  
</tr>
</table> 
</body>
<div align="center">
<a href='<s:url action="delete"><s:param name="ISBN" value="ISBN" /></s:url>'>删除</a>
<a href='<s:url action="toupdate"><s:param name="Title" value="Title" /></s:url>'>更新</a>
</div>
</html>