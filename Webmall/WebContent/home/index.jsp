<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지 디자인</title>
<link rel="stylesheet" href="../../common/CSS/common.css">
</head>
<body>
<%@ include file="../common/include/home_ses_check.inc" %>

<!-- 가장자리 box -->
<div id="out_box">
<div id="header">
<b>header</b>
</div>

<!-- body_left -->
<div id="body_left">
<form name="login_form" method="post" action="./login_ses_create.jsp">
<table>
<tr>
<th>아 이 디</th>
<td><input type="text" name="cust_id" size="10" maxlength="10" required autofocus></td>
</tr>
<tr>
<th>비밀번호</th>
<td><input type="password" name="cust_pw" size="11" maxlength="10" required></td>
</tr>
<tr>
<td colspan="2" style="text-align:center;">
<%
	if(login) {
		out.print("<input type='submit' value='로그인' disabled>"
				+ "<input type='button' value='회원가입' disabled></td>");
	}
	else {
		out.print("<input type='submit' value='로그인'>"
				+ "<input type='button' value='회원가입'"
				+ "onClick=location.href='../DML/customer/" 
				+ "customer_insert_form.jsp'></td>");
	}
%>
</tr>
</table>
</form>
</div>

<!-- body_middle -->
<div id="body_middle">
<ul id="menu_ul">
<%
	if(login) {
		out.print("<li><a href='../DML/customer/customer_update_form.jsp'"
				+ "target='_parent'>회원정보 갱신</a></li>");
	}
	else {
		out.print("<li><a href='../DML/customer/customer_insert_form.jsp'"
				+ "target='_parent'>회원가입</a></li>");
	}
%>
<li><a href="../DML/order_sale/.jsp" target="_blank">상품검색</a></li>
<li><a href="../DML/board_auto/.jsp" target="_blank">게시판</a></li>
<li><a href="../DML/notice/.jsp" target="_blank">공지사람</a></li>
</ul>
</div>

<!-- body_right -->
<div id="body_right">
<%
	if(login) {
		out.print("("+cust_name+")님 로그인 중"
				+ "<input type='button' vlaue='로그아웃'"
				+ "onClick=location.href='./logout_ses_delete.jsp'>");
	}
	else {
		out.print("로그인 하세요.");
	}
%>
</div>

<!-- footer -->
<div id="footer">
	<b>footer</b>
</div>
</div>
</body>
</html>