<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 입력</title>
<link rel="stylesheet" href="../../common/CSS/common.css">
</head>
<body>
<form name="customer_form" method="post" action="customer_insert_db.jsp"></form>
<table>
<caption>회원정보 입력</caption>
<tr style="border-style:hidden hidden solid hidden;">
<td colspan="2" style="background-color:white; text-align:right;">
<span class="msg_red">* 부분은 필수입력 항목입니다.</span></td>
</tr>

<%@ include file="../../common/include/html_input1_irud.jsp" %>

<tr>
<th><span class="msg_red">*</span>비밀번호</th>
<td><input type="password" name="cust_pw" size="11" maxlength="10" required>
<span class="msg_blue">(영,숫자 10자리이내)</span></td>
</tr>

<tr>
<th><span class="msg_red">*</span> 이 &nbsp; 름 &nbsp; &nbsp;</th>
<td><input type="text" name="cust_name" size="15" maxlength="15" style="ime-mode:active" required></td>
</tr>

<tr>
<th><span class="msg_red">*</span>전화번호</th>
<td><select name="tel_no_gubun" required>
<option selected value="">서비스구분</option>
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-
<input type="text" name="tel_no_guk" size="5" maxlength="4" required>-
<input type="text" name="tel_no_seq" size="5" maxlength="4" required></td>
</tr>

<tr>
<th><span class="msg_red">*</span> 주 &nbsp; 소 &nbsp; &nbsp;</th>
<td><input type="text" name="cust_addr" size="60" maxlength="60" required></td>
</tr>

<tr>
<th>성 &nbsp; 별  &nbsp; </th>
<td><input type="radio" name="cust_gender" value="M">남자 &nbsp;
	<input type="radio" name="cust_gender" value="F">여자</td>
</tr>

<tr>
<th>이 메 일</th>
<td><input type="text" name="cust_email_1" size="15" maxlength="15" maxlength style="ime-mode:disable">@
<input type="text" name="cust_email_2" size="20" maxlength="20" maxlength style="ime-mode:disable"></td>
</tr>

<tr>
<td colspan="2" style="text-align:center;">
<input type="submit" value="회원가입">
<a href="./customer_maintenance.jsp">[ 고객정보 관리 ]</a></td>
</tr>
</table>
</body>
</html>