<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dk.itst.oiosaml.sp.UserAssertion" %>
<%@ page import="dk.itst.oiosaml.sp.UserAssertionHolder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<%
UserAssertion ua = (UserAssertion) request.getSession().getAttribute("dk.itst.oiosaml.userassertion");
//UserAssertion ua = UserAssertionHolder.get();
if (ua != null) {
%>
用户已登录：<%=ua.getUserId() %>
<br/><a href="saml/Logout">登出全部SP</a>
<br/><a href="sp/logout.jsp">仅登出此SP</a>
<% } else {%>
用户未登陆
<% } %>
</body>
</html>