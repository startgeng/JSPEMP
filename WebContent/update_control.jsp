<%@page import="com.kevin.Emp"%>
<%@page import="java.util.Map"%>
<%@page import="com.kevin.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

Map<String,Emp> map = DBUtil.map;
Emp emp = map.get(request.getParameter("account"));
emp.setName(request.getParameter("name"));
emp.setEmail(request.getParameter("email"));
%>
<h3 align="center">修改员工信息成功</h3>
</body>
</html>