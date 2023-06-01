<%@ page contentType="text/html;charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");

		String name = request.getParameter("name");
		String studentNum = request.getParameter("studentNum");
		String gender = request.getParameter("gender");
		String major = request.getParameter("major");

		if(gender.equals("man")){
			gender = "남자";
		}else{
			gender = "여자";
		}
%>
<h1>Request Example1</h1>
성명 : <%=name%><p/>
학번 : <%=studentNum%><p/>
성별 : <%=gender%><p/>
학과 : <%=major%>