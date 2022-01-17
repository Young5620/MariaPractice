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
<title>로그인 체크 및 세션 설정</title>
</head>
<body>
<%
	// 전송 데이터 변수 할당
	String cust_id = request.getParameter("cust_id");
	String cust_pw = request.getParameter("cust_pw");
	
	// 아이디, 비밀번호 체크
	if(cust_id.isEmpty() || cust_pw.isEmpty()) {
		out.print("<script>alert('아이디와 비밀번호를 확인하세요');"
				+ "history.back();"
				+ "</script>");
	}
	
	// 객체 참조 변수
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		// JDBC 드라이버 로딩 & MariaDB 서버와 데이터베이스 연결
		conn = DbConnClose.getConnection();
		
		try {
			//SQL 질의어처리
			//고객테이블 튜플검색
			String sql = "SELECT * FROM customer WHERE (cust_id=?) and (cust_pw=?)";
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cust_id);
				pstmt.setString(2, cust_pw);
			rset = pstmt.executeQuery();
			
			//질의처리결과 체크
			//cursor - 초기상태 아니거나 행이 없으면 false 리턴
			if(!rset.isBeforeFirst()) {
				out.print("<script>alert('존재하지 않는 아이디와 비밀번호입니다.');"
						+ "history.back();"
						+ "</script>");
			}
			rset.next();
			
			String cust_name = rset.getString("cust_name");
			
			//세션 객체의 속성생성
			session.setAttribute("cust_id", cust_id);
			session.setAttribute("cust_name", cust_name);
		}
		catch (SQLException sqlerr) {
			out.println("SQL 질의처리 오류"+sqlerr.getMessage());
		}
		finally {
			//데이터베이스 연결 종료
			DbConnClose.resourceClose(rset, pstmt, conn);
		}
		//경고 창 무시하고 지정페이지로 강제이동
		response.sendRedirect("./index.jsp");
%>
</body>
</html>