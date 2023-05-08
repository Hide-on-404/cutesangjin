<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	// DB항목 지정
	Integer numb = Integer.parseInt(request.getParameter("numb"));
	String choiceSub = request.getParameter("choiceSub");
	String choice_1 = request.getParameter("choice_1");
	String choice_2 = request.getParameter("choice_2");
/* 	Integer count1 = Integer.parseInt(request.getParameter("count1"));
	Integer count2 = Integer.parseInt(request.getParameter("count2")); */
	
	// PreparedStatemnet객체 생성
	String sql="insert into product values(?,?,?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	int cnt = 0;
	pstmt.setInt(++cnt, numb);
	pstmt.setString(++cnt, choiceSub);
	pstmt.setString(++cnt, choice_1);
	pstmt.setString(++cnt, choice_2);
	pstmt.setInt(++cnt, count1);
	pstmt.setInt(++cnt, count2);
	
	pstmt.executeUpdate();
	
	out.println("추가 성공");
	if(pstmt !=null) pstmt.close();
	if(conn !=null) conn.close(

	
	
	
%>