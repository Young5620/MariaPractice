<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 삭제</title>
<link rel="stylesheet" href="../../common/CSS/common.css">
</head>
<body>
<form name="customer_form" method="post" action="customer_delete_retrieval.jsp">
<table>
<caption>회원정보 삭제</caption>
<tr style="border-style:hidden hidden solid hidden;">
<td colspan="2" style="background-color:white; text-align:right;">
<span class="msg_red">* 부분은 필수입력 항목입니다.</span></td>
</tr>

<%@ include file="../../common/include/html_input1_irud.inc" %>
<%@ include file="../../common/include/html_input2_rud.inc" %>

<tr>
<td colspan="2" style="text-align:center;">
	<input type="submit" value="회원정보 검색">
	<a href="./customer_maintenance.jsp"></a></td>
</tr>

</table>
</form>
</body>
</html>