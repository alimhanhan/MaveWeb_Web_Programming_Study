<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");		

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby");
		String comment = request.getParameter("comment");
	%>
	<p>아이디 : <%=id%>
	<p>비밀번호 : <%=name%>
	<p>이름 : <%=passwd%>
	<p>연락처 : <%=phone%>-<%=phone2%>-<%=phone3%>
	<p>성별 : <%=sex%>
	<p>취미 :	<%
			if (hobby != null) {
				for (int i = 0; i < hobby.length; i++) {
					out.println(" " + hobby[i]);
				}
			}
		%>	
	<p>가입인사 : <%=comment%>
</body>
</html>