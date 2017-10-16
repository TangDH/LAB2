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
<div style="width:100%;text-align:center">
<form action="addauthor1">
<h1 align="center">该作者尚未收录请先更新作者信息，再录入书籍</h1>
<table cellpadding="0" cellspacing="4" border="0" align="center">
	<tr>
        <th>作者ID</th>
        <td><input type="text" name="AuthorId"/></td>
    </tr>
    <tr>
        <th>作者</th>
        <td><input type="text" name="Name" value=<s:property value="Name"/> readonly/></td>
    </tr>
    <tr>
        <th>年龄</th>
        <td><input type="text" name="Age"/></td>
    </tr>
    <tr>
        <th>国籍</th>
        <td><input type="text" name="Country"/></td>
    </tr>
</table>
<input type="submit" name="录入作者">
</form>
</div>
</body>
</html>