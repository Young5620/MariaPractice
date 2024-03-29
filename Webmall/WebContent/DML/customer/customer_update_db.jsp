<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="dbconnclose.*" %>
<% // 전송 한글 데이터처리
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 회원정보  DB갱신</title>
<link rel="stylesheet" href="../../common/CSS/common.css">
</head>
<body>
<%
	// 전송 데이터 변수 할당
	String cust_id = request.getParameter("cust_id");
%>
<%@ include file="../../common/include/jsp_sql_dbset_iu.inc" %>
<%
	// 객체 참조변수
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rset = null;
	
	//JDBC 드라이버 로딩 & MariaDB 서버와 데이터베이스 연결
	conn = DbConnClose.getConnection();
	try {
		// SQL 질의어 처리
		// 고객테이블 튜플 검색 - 아이다, 가입일 갱신 불가
		String sql = "UPDATE customer SET "
					+ "cust_pw=?, cust_name=?, "
					+ "cust_tel_no=?, cust_addr=?, "
					+ "cust_gender=?, cust_email=? "
					+ "WHERE cust_id=?";
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cust_pw);
			pstmt.setString(2, cust_name);
			pstmt.setString(3, cust_tel_no);
			pstmt.setString(4, cust_addr);
			pstmt.setString(5, cust_gender);
			pstmt.setString(6, cust_email);
			pstmt.setString(7, cust_id);
		pstmt.executeUpdate();
	} catch(SQLException sqlerr) {
		out.println("SQL 질의처리 오류" + sqlerr.getMessage());
	} finally {
		// 데이터베이스 연결종료
		DbConnClose.resourceClose(pstmt, conn);
	}
	//튜플 삽입 후 고객정보 관리 메뉴
		out.println("고객테이블 튜플 저장 성공"+"<br>");
		out.println("<script>alert('회원가입을 환영합니다');" + "location.href='./customer_maintenance.jsp';"
					+ "</script>");
%>
</body>
</html>