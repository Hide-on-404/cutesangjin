<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>JDBC드라이버 테스트 </h2>

<%
  Connection conn=null;

  try{
	 String jdbcUrl = "jdbc:mysql://localhost:3306/webmarketdb";
     String dbId = "root";
     String dbPass = "1234";
	
	 Class.forName("com.mysql.jdbc.Driver");
	 conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	 out.println("제대로 연결되었습니다.");
  }catch(Exception e){ 
	 e.printStackTrace();
  }
%>
[출처] [JSP] JDBC 드라이버로 JSP와 DB 연동하기|작성자 ALOHA
</body>
</html>