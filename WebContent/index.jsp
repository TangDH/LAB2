<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library</title>
</head>
<link href="index.css" type="text/css"
rel="stylesheet" />
<body>


<h1  align="center">欢迎来到图书管理页面</h1>
<h5  align="center">请输入想查询的作者</h5>
<div style="width:100%;text-align:center">
<form action="query">
	<input type="text" name="author"/>
    <input type="submit" value="查询"/>
</form>
<br>
<br>
<form action="add">
	<input type="submit" value="添加图书"/>
</form>


 </div>
</body>
</html>