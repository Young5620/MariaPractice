<%
	// 고객테이블 튜플 검색
	String sql = "SELECT * FROM customer WHERE (cust_id = ?)";
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cust_id);
	rset = pstmt.executeQuery();
	
	// 질의 처리 결과 체크
	// cursor - 초기 상태 아니거나 행(결과)이 없으면 false 리턴
	if (!rset.isBeforeFirst()) {
		out.print("<script>alert('존재하지 않는 아이디입니다.');" + "history.back();" + "</script>");
		}
		
	// 첫번째 레코드 커서 이동
	rset.next();
	cust_id = rset.getString("cust_id"); 
	String cust_pw = rset.getString("cust_pw");
	String cust_name = rset.getString("cust_name");
	String custTelNo = rset.getString("cust_tel_no");
	String cust_addr = rset.getString("cust_addr");
	String cust_gender = rset.getString("cust_gender");
	String cust_email = rset.getString("cust_email");
	String cust_join_date = rset.getString("cust_join_date");
%>