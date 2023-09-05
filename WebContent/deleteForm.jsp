<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@ page import="java.util.List" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	GuestVo guestVo = new GuestVo();
	guestVo.setNo(no);

%>

<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>





	<form>
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
				<td><button href="./delete.jsp?no=" type="submit">삭제</button></td>
			</tr>
		</table>
	</form>
	
	
	
	<br><br>
	<a href="./addList.jsp">메인으로 돌아가기</a>
	
	
</body>
</html>