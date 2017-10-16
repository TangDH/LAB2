<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library</title>
</head>
<link href="notfound.css" type="text/css"
rel="stylesheet" />
<body>
<img src=notfound_background.png style="margin: 0 auto;">
<h3>作者：<s:property value="author"/>未收录</h3>
<a href='<s:url action="home"></s:url>' style="display:block;text-align:center;">返回上一级菜单</a>
</body>
</html>