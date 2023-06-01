<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JavaBeans</title>
</head>
<body>

<jsp:useBean id="p1" class="ch09.Person" />

<% request.setCharacterEncoding("euc-kr");

   String id = request.getParameter("id");
   String name = request.getParameter("name");
%>

<jsp:setProperty name="p1" property="id" value='<%=id%>'/>
<jsp:setProperty property="name" name="p1" value='<%=name%>'/>

<h3>입력하신 아이디와 이름을 확인합니다.</h3>
<table border="1" style="width:300px; border-collapse:collapse; ">
	<tr>
		<th>아이디</th>
		<td><jsp:getProperty property="id" name="p1"/></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><jsp:getProperty property="name" name="p1"/></td>
	</tr>
</table>

</body>
</html>