<%@page contentType="text/html;charset=EUC-KR"%>
<%
	   request.setCharacterEncoding("EUC-KR");
%>
<html>
<body>
<h1>Forward Tag Example1</h1>
Forward Tag의 포워딩 되기 전의 페이지입니다.
<jsp:forward page="forwardTag1_2.jsp" />
</body>
</html>