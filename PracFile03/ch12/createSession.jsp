<%@ page contentType="text/html; charset=EUC-KR" %>
<html>
<head>
	<title>세션사용예제(세션생성)</title>
</head>
<body>
<%
	String id = "rorod";
	String pwd = "1234";

	session.setAttribute("idKey", id);
	session.setAttribute("pwdKey", pwd);
%>
세션이 생성되었습니다.<br/>
<a href="viewSessionInfo.jsp">세션정보를 확인하는 페이지로 이동</a>
</body>
</html>