<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library</title>
</head>
<link href="addbook.css" type="text/css"
rel="stylesheet" />
<body>
<div align="center">
<form action="update">
<!--  请输入《<s:property value="Title"/>》的更新内容<br/>-->
<table cellpadding="0" cellspacing="5" border="0" align="center">
	<tr>
        <th>书名(不可更改)</th>
        <td><input type="text" name="Title" value=<s:property value="Title"/> readonly/></td>
    </tr>
    <tr>
        <th>作者</th>
        <td><input type="text" name="Name"/></td>
    </tr>
    <tr>
        <th>出版社</th>
        <td><input type="text" name="Publisher"/></td>
    </tr>
    <tr>
        <th>出版日期</th>
        <td><input type="text" name="PublishDate"/></td>
    </tr>
    <tr>
        <th>价格</th>
        <td><input type="text" name="Price"/></td>
    </tr>
</table>
<input type="submit" name="确认更新">
<!--  <a href='<s:url action="update"><s:param name="Title" value="Title" /></s:url>'>确认更新</a>-->
</form>
</div>
</body>
</html>