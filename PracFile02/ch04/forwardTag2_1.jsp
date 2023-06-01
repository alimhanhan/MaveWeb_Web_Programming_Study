<%@page contentType="text/html;charset=EUC-KR"%>
<%
 	String name = "JSPStudy";
 	String bloodType = request.getParameter("bloodType");
 %>
 <h1>Forward Tag Example2</h1>
<jsp:forward page='<%=bloodType + ".jsp"%>'>
 	<jsp:param name="name" value="<%=name%>"/>
</jsp:forward>