<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@ page import="java.util.List" %>
    
    
    <%
	// 파라미터의 값 꺼내오기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	// vo묶기
	GuestVo guestVo = new GuestVo();
	guestVo.setName(name);
	guestVo.setPassword(password);
	guestVo.setContent(content);
	
	// 테스트출력
	System.out.println(guestVo);
	
	// Dao를 통해서 데이터 저장
	GuestDao guestDao = new GuestDao();
	int count = guestDao.guestInsert(guestVo);
	System.out.println(count);
	
	////////////////////////////////////////////////////////////////
	// 리스트 뿌리기
	
	response.sendRedirect("./addList.jsp");
	
%>
    
    
    
    
    
