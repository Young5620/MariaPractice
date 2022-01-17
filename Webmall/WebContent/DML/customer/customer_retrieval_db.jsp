<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="dbconnclose.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 회원정보 검색</title>
<link rel="stylesheet" href="../../common/CSS/common.css">
</head>
<body>
<% // 전송 데이터 확인 및 변수할당 %>
<%@ include file="../../common/include/jsp_id_check_iruds.inc" %>
<%
	// 객체참조변수
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rset = null;
	
	// JDBC 드라이버 로딩 & MariaDB 서버와 데이터베이스 연결
	conn = DbConnClose.getConnection();
	try{
		// SQL 질의어 처리
		// 고객테이블 퓨틀 검색
	%>
	<%@ include file="../../common/include/jsp_sql_dbget_rud.inc" %>
	<%
	// 회원검색정보 출력
	%>
	
<form name="customer_form">
<table>
<caption>회원정보 검색</caption>
<tr style="border-style:hidden hidden solid hidden;">
<td colspan="2" style="background-color:white; text-align:right;">
	<span class="msg_red">* 부분은 필수입력 항목입니다.</span></td>
</tr>

<%@ include file="../../common/include/html_output_rd.inc" %>

<tr>
<td colspan="2" style="test-align:center;">
	<a href="./customer_maintenance.jsp">[ 고객정보 관리 ]</a></td>
</tr>
</table>	
</form>

<%
	} catch(Exception sqlerr){
		out.println("SQL 질의처리오류"+sqlerr.getMessage());
	}
	 finally {
		// 데이터베이스 연결종료
		DbConnClose.resourceClose(rset,pstmt,conn);
	}
	out.println("고객테이블 튜플 검색 성공"+"<br>");
%>
</body>
</html>