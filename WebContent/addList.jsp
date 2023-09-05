<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@ page import="java.util.List" %>
    
    
<%
	GuestDao GuestDao = new GuestDao();
	List<GuestVo> personList = GuestDao.guestSelect("");
	
	System.out.println(personList);

%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<table border="1" width="540px">
			<tr>
				<td>이름</td><td><input type="text" name=""></td>
				<td>비밀번호</td><td><input type="password" name=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea cols="72" rows="5"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="">등록</button></td>
			</tr>
		</table>
	</form>
	<br>

	<%for(int i=0;i<personList.size();i++) {%>
		<table border="1" width="540px">
			<tr>
				<td><%=personList.get(i).getNo()%></td>
				<td><%=personList.get(i).getName()%></td>
				<td><%=personList.get(i).getRegDate()%></td>
				<td><a href="./deleteForm.jsp">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4"><%=personList.get(i).getContent()%></td>
			</tr>
		</table>
		<br>
	<%}%>
	
</body>
</html>