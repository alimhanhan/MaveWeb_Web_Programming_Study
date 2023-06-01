<%@ page contentType="text/html;charset=EUC-KR"%>
<%
	   request.setCharacterEncoding("EUC-KR");

		String season = request.getParameter("season");
		String fruit = request.getParameter("fruit");
    	String id = (String)session.getAttribute("idKey");    
		String sessionId = session.getId();
		int intervalTime = session.getMaxInactiveInterval();
 
		if(id != null){
%>
<h1>Session Example1</h1>
<b><%=id%></b>님이 좋아하시는 계절과 과일은<p/>  
<b><%=season%></b>과 <b><%=fruit%></b> 입니다.<p/>
세션 ID : <%=sessionId%><p>
세션 유지 시간 : <%=intervalTime%>초<p/>
<%
	 session.invalidate();
	}else{
         out.println("세션의 시간이 경과를 하였거나 다른 이유로 연결을 할 수가 없습니다.");
    }
%>
