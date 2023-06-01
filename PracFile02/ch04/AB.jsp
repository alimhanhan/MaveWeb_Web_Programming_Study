<%@ page contentType="text/html;charset=EUC-KR"%>
<h1>Forward Tag Example2</h1>
<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<%=name%>님의 혈액형은
<b><%=bloodType%></b>형이고<p>
정확한 판단력을 가진 합리주의자입니다.
