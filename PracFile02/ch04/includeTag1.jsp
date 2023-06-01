<%@page contentType="text/html;charset=EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String name = "Korea Football";
%>
<html>
<body>
<h1>Include Tag Example1</h1>
<jsp:include page="includeTagTop1.jsp" />
include ActionTag의 Body입니다.
</body>
</html>