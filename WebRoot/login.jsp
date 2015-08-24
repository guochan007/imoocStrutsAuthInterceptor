<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
</head>
<body>
 <h1>用户登录</h1>
 ${loginError }
 <form action="login.action">
 	用户名：<input type="text" name="username"/></br>
 	密码：<input type="password" name="password"/></br>
 	<input type="submit" value="登录"/>
 	
 </form>
</body>
</html>