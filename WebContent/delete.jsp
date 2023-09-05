<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@ page import="java.util.List" %>
    
    
    <%
	// 파라미터의 값 꺼내오기
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");


	
	// 테스트출력
	
	// Dao를 통해서 데이터 저장
	GuestDao guestDao = new GuestDao();
	
	int count = guestDao.guestDelete(no, password);
	System.out.println(count);
	
	////////////////////////////////////////////////////////////////
	// 리스트 뿌리기
	
	response.sendRedirect("./addList.jsp");
	
%> 
    




    
    
    
    
    
    
    
    
    
    
