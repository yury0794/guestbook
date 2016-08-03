<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.sungkyul.guestbook.dao.GuestBookDao"%>
<%
	GuestBookDao dao = new GuestBookDao();
	List<GuestBookVo> list = dao.getList();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<h1>안녕하세요 전유리 방명록입니다</h1>
	<form action="add.jsp" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" value=" 확인 "></td>
			</tr>
		</table>
	</form>
	<%
		int size = list.size();
		int index = 0;
		for (GuestBookVo vo : list) {
	%>
	<br>
	<table width=510 border=1>
		<tr>
			<td>[<%=size-index%>]</td>			
			<td><%=vo.getName()%></td>
			<td><%=vo.getRegDate()%></td>
			<td><a href="deleteform.jsp?no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getContent().replaceAll("\n", "<br>")%></td>
		</tr>
	</table>
	<%
		index++;
		}
	%>
</body>
</html>