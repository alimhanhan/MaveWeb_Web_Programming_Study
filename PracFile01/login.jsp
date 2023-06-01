<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	  request.setCharacterEncoding("EUC-KR");
	  String id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
		<%if (id != null) {%>
		<table width=300>
		<tr><td>
		<b><%=id%></b>님 환영 합니다.  <a href="logout.jsp">[로그아웃]</a>
		<br><p>제한된 기능을 사용 할 수가 있습니다.<p/>
		</td></tr>
		<tr><td>
		<a href="memberList.jsp" target="content">■ 회원 목록보기</a><br>
		<a href="memberUpdate.jsp" target="content">■ 회원 수정</a><br>
		<a href="memberDelete.jsp" target="content">■ 회원 탈퇴</a>
		</td></tr>
		</table>
			<%} else {%>
		<form name="loginFrm" method="post" action="loginProc.jsp">
			<table>
				<tr>
					<td align="center" colspan="2"><h4>로그인</h4></td>
				</tr>
				<tr>
					<td>아 이 디</td>
					<td><input name="id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="right">
							<input type="button" value="로그인" onclick="loginCheck()">&nbsp;
							<a href="member.jsp" target="content"><input type="button" value="회원가입"></a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<%}%>
	</div>
</body>
</html>