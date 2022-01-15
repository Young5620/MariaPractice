<%-- // 전송 데이터 확인 및 변수 할당--%>
<%
	String cust_id = request.getParameter("cust_id");
	if(cust_id.isEmpty()) {
	out.print("<script>alert('아이디를 입력하세요');" + "history.back();" + "</script>");
 }
 %>