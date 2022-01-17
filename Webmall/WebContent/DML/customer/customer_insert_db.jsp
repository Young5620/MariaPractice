<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.time.*" %>
<%@ page import="dbconnclose.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객테이블 개인 고객정보 DB삽입</title>
</head>
<body>

<%@ include file="../../common/include/jsp_id_check_iruds.inc" %>
<%
	// 객체 참조변수
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rset = null;
	
	// JDBC 드라이버로딩 & MariaDB 서버와 데이터베이스 연결
	conn = DbConnClose.getConnection();
	try {
		// 아이디 중복확인
		String sql = "SELECT * FROM customer WHERE (cust_id = ?)";
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cust_id);
		rset = pstmt.executeQuery();
		
		if (rset.next()) {
			out.print("<script>alert('사용할 수 없는 아이디입니다.');" + "history.back();" + "</script>");
		} else {
			%>
			<%@ include file="../../common/include/jsp_sql_dbset_iu.inc" %>
			<%
			// SQL 질의어처리
			// 고객테이블 튜플 삽입
			sql = "INSERT INTO customer VALUES(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cust_id);
				pstmt.setString(2, cust_pw);
				pstmt.setString(3, cust_name);
				pstmt.setString(4, cust_tel_no);
				pstmt.setString(5, cust_addr);
				pstmt.setString(6, cust_gender);
				pstmt.setString(7, cust_email);
				pstmt.setString(8, LocalDate.now().toString());
			pstmt.executeUpdate();			
		}
	} catch(SQLException sqlerr) {
		out.print("SQL 질의처리 오류" + sqlerr.getMessage());
	} finally {
		//데이터베이스 연결종료
		DbConnClose.resourceClose(rset, pstmt, conn);
	}
	//튜플 삽입 후 고객정보 관리 메뉴
	out.println("고객테이블 튜플 저장 성공"+"<br>");
	out.println("<script>alert('회원가입을 환영합니다');" + "location.href='./customer_maintenance.jsp';"
				+ "</script>");
	
%>
</body>
</html>