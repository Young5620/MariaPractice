<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃과 세션삭제</title>
</head>
<body>
<!-- 세션 객체의 속성확인 -->
<%@ include file="../common/include/home_ses_check.inc" %>

<%
	//세션 객체 삭제 - 세션 초기화
	session.invalidate();
	//경고창 무시하고 지정페이지로 강제이동
	response.sendRedirect("./index.jsp");
%>
</body>
</html>