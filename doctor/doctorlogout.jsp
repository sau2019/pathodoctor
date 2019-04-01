<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	session.setAttribute("duserid", null);
	session.invalidate();
	response.sendRedirect("../index.jsp");
%>