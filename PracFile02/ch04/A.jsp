<%@ page contentType="text/html;charset=EUC-KR"%>
<h1>Forward Tag Example2</h1>
<%
   String name = request.getParameter("name");
   String bloodType = request.getParameter("bloodType");
%>
<b><%=name%></b>님의 혈액형은
<b><%=bloodType%></b>형이고
성실하고 하며 완벽주의자입니다.