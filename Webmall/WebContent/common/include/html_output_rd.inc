<tr>
	<th><span class="mmsg_red">*</span>아 이 디</th>
	<td><input type="text" name="cust_id" size="10" maxlength="10" 
		value="<%=cust_id%>" readonly>
		<span class="msg_blue">(영,숫자10자리 이내)</span></td>
</tr>

<tr>
	<th><span class="mmsg_red">*</span>비밀번호</th>
	<td><input type="text" name="cust_pw" size="11" maxlength="10" 
		value="<%=cust_pw%>" readonly>
		<span class="msg_blue">(영,숫자10자리 이내)</span></td>
</tr>

<tr>
	<th><span class="mmsg_red">*</span>이 &nbsp; 름 &nbsp; &nbsp;</th>
	<td><input type="text" name="cust_name" size="10" maxlength="5" 
		value="<%=cust_name%>" readonly></td>
</tr>

<tr>
	<th><span class="mmsg_red">*</span>전화번호</th>
	<td><select name = "tel_no_gubun" disabled>
				<option selected value="">서비스 구분</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
<%
  // 문자열 내부 " 포함(\")
  String[] cust_tel_no = custTelNo.split("-",3);
  if (cust_tel_no[0].equals("010")) {
  	out.print("<option selected value=\"010\">010</option>");
  	} else if (cust_tel_no[0].equals("011")) {
  		out.print("<option selected value=\"011\">011</option>");
  			} else if (cust_tel_no[0].equals("016")) {
  				out.print("<option selected value=\"016\">016</option>");
  					} else if (cust_tel_no[0].equals("017")) {
  						out.print("<option selected value=\"017\">017</option>");
  							} else if (cust_tel_no[0].equals("018")) {
  								out.print("<option selected value=\"018\">018</option>");
  									} else if (cust_tel_no[0].equals("019")) {
  										out.print("<option selected value=\"019\">019</option>");
  											} else {
  													out.print("<option selected value=\"\">서비스구분</option>");
  }
 %>
 	</select>-
		<input type="text" name="tel_no_guk" size="5" maxlength="4" 
		value="<%=cust_tel_no[1]%>" readonly>-
		<input type="text" name="tel_no_seq" size="5" maxlength="4" 
		value="<%=cust_tel_no[2]%>" readonly></td>
</tr>
  
<tr>
	<th><span class="mmsg_red">*</span>주 &nbsp; 소 &nbsp; &nbsp;</th>
	<td><input type="text" name="cust_addr" size="50" maxlength="60" 
		value="<%=cust_addr%>" readonly></td>
</tr>				

<tr>
	<th>성 &nbsp; 별 &nbsp; </th>
	<td>
 <%
 	if(cust_gender == null) {
 		out.print("<input type=\"radio\" name=\"cust_gender\" value=\"M\" disabled>남자&nbsp");
 		out.print("<input type=\"radio\" name=\"cust_gender\" value=\"F\" disabled>여자");
	} else if (cust_gender.equals("M")) {
		out.print("<input type=\"radio\" name=\"cust_gender\" value=\"M\" checked disabled>남자&nbsp");
 		out.print("<input type=\"radio\" name=\"cust_gender\" value=\"F\" disabled>여자");
	} else {
		out.print("<input type=\"radio\" name=\"cust_gender\" value=\"M\" disabled>남자&nbsp");
 		out.print("<input type=\"radio\" name=\"cust_gender\" value=\"F\" checked disabled>여자");
 }
 %>			
	</td>
</tr>			

<tr>
	<th>이 메 일</th>
 <%
 	String array_email[], cust_email_1, cust_email_2;
 	if (cust_email.isEmpty()) {
 		cust_email_1 = "";
 		cust_email_2 = "";
 	} else {
 		array_email = cust_email.split("@", 2);
 		cust_email_1 = array_email[0];
 		cust_email_2 = array_email[1];
 		}
  %> 
	<td><input type="text" name="cust_email_1" size="15" maxlength="10" 
		value="<%=cust_email_1%>" readonly>@
		<input type="text" name="cust_email_2" size="20" maxlength="20" 
		value="<%=cust_email_2%>" readonly></td>
</tr>

<tr>
	<th>가 입 일</th>
	<td><input type="text" name="cust_join_date" size="10"
		value="<%=cust_join_date%>" readonly></td>
</tr>			