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
<form action="addbook">
<div style="width:100%;text-align:center">
<h1>书籍信息录入</h1>
<table cellpadding="0" cellspacing="6" border="0" align="center">
	<tr>
        <th>ISBN</th>
        <td><input type="text" name="ISBN"/></td>
    </tr>
    <tr>
        <th>书名</th>
        <td><input type="text" name="Title"/></td>
    </tr>
    <tr>
        <th>作者ID</th>
        <td><input type="text" name="AuthorId"/></td>
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
<input type="submit" name="录入新书">






</div>
</form>

</body>
</html>