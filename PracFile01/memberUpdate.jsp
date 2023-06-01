<%@ page contentType="text/html;charset=EUC-KR" %>
<%@page import="ch14.MemberBean"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
<%
	String id = (String) session.getAttribute("idKey");
	MemberBean mBean = mMgr.getMember(id);
%>
<html>
<head>
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function zipCheck() {
		url = "zipSearch.jsp?search=n";
		window.open(url, "ZipCodeSearch","width=500,height=300,scrollbars=yes");
	}
</script>
</head>
<body onLoad="regFrm.id.focus()">
	<div align="center">
		<br /> <br />
		<form name="regFrm" method="post" action="memberUpdateProc.jsp">
			<table align="center" cellpadding="5" >
				<tr>
					<td align="center" valign="middle" >
						<table border="1" cellpadding="2" align="center" width="600">
							<tr align="center" bgcolor="#996600">
								<td colspan="3"><font color="#FFFFFF"><b>회원 수정</b></font></td>
							</tr>
							<tr>
								<td width="20%">아이디</td>
								<td width="80%"><input name="id" size="15"
									value="<%=id%>" readonly></td>
							</tr>
							<tr>
								<td>패스워드</td>
								<td><input type="password" name="pwd" size="15"
									value="<%=mBean.getPwd()%>"></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input name="name" size="15"
									value="<%=mBean.getName()%>"></td>
							</tr>
							<tr>
								<td>성별</td>
								<td>남<input type="radio" name="gender" value="1"
									<%=mBean.getGender().equals("1") ? "checked" : ""%>> 여<input
									type="radio" name="gender" value="2"
									<%=mBean.getGender().equals("2") ? "checked" : ""%>>
								</td>
							</tr>
							<tr>
								<td>생년월일</td>
								<td><input name="birthday" size="6"
									value="<%=mBean.getBirthday()%>"> ex)830815</td>
							</tr>
							<tr>
								<td>Email</td>
								<td><input name="email" size="30"
									value="<%=mBean.getEmail()%>"></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><input name="zipcode" size="5"
									value="<%=mBean.getZipcode()%>" readonly> <input
									type="button" value="우편번호찾기" onClick="zipCheck()"></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><input name="address" size="45" value="<%=mBean.getAddress()%>"></td>
							</tr>
							<tr>
								<td>취미</td>
								<td>
									<%
										String list[] = { "인터넷", "여행", "게임", "영화", "운동" };
										String hobbys[] = mBean.getHobby();
										for (int i = 0; i < list.length; i++) {
											out.println( list[i]);
											out.println("<input type=checkbox name=hobby ");
											out.println("value=" + list[i] + " "
											+ (hobbys[i].equals("1") ? "checked" : "") + ">");
										}
									%>
								</td>
							</tr>
							<tr>
								<td>직업</td>
								<td><select name=job>
										<option value="0">선택하세요.
										<option value="회사원">회사원
										<option value="연구전문직">연구전문직
										<option value="교수학생">교수학생
										<option value="일반자영업">일반자영업
										<option value="공무원">공무원
										<option value="의료인">의료인
										<option value="법조인">법조인
										<option value="종교,언론,에술인">종교.언론/예술인
										<option value="농,축,수산,광업인">농/축/수산/광업인
										<option value="주부">주부
										<option value="무직">무직
										<option value="기타">기타
								</select>
								<script>document.regFrm.job.value="<%=mBean.getJob()%>"</script>
								</td>
							</tr>
							<tr>
								<td colspan="3" align="center">
								<input type="submit" value="수정완료"> &nbsp; &nbsp; 
								<input type="reset" value="다시쓰기"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>