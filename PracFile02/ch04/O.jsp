<%@ page contentType="text/html;charset=EUC-KR"%>
<%
   String name = request.getParameter("name");
   String bloodType = request.getParameter("bloodType");
%>
<h1>Forward Tag Example2</h1>
<b><%=name%></b>님의 혈액형은
<b><%=bloodType%></b>형이고
강한 의지의 소유자입니다.