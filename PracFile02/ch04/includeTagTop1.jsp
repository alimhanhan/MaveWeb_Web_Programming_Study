<%@page contentType="text/html;charset=EUC-KR"%>
<%
	String name = request.getParameter("name");
%>
include ActionTag의 Top입니다.
<p/>
<b><%=name%> Fighting!!!</b>
<hr/>