<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.ac.sungkyul.guestbook.dao.GuestBookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestBookVo"%>

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);

	GuestBookDao dao = new GuestBookDao();
	boolean result = dao.insert(vo);

	response.sendRedirect("/guestbook");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>