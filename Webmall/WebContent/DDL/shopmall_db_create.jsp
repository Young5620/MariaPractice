<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰데이터베이스 DB생성</title>
</head>
<body>
<%
	// JDBC 드라이버 로딩
	String driverClass = "org.mariadb.jdbc.Driver";

	try {
		Class.forName(driverClass);
		out.println("JDBC Driver loading 성공<br>");
	}
	catch(ClassNotFoundException err) {
		out.println("JDBC Driver loading 실패");
	}
	
	// MariaDB 서버연결
	String url = "jdbc:mariadb://localhost:3306/";
	String id = "root";
	String pw = "0000";
	
	// 객체참조변수
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
		conn = DriverManager.getConnection(url,id,pw);
		
		// SQL 질의어 처리
		// 쇼핑몰데이터베이스 스키마생성
		String sql = "CREATE DATABASE shopmall";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		out.println("쇼핑몰데이터베이스 성공<br>");
	}
	catch(SQLException sqlerr) {
		out.println("쇼핑몰데이터베이스 생성 실패"+sqlerr.getMessage());
	}
%>
</body>
</html>