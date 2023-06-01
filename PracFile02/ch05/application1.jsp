<%@ page contentType="text/html;charset=EUC-KR"%>
<%
	String serverInfo = application.getServerInfo();
	String mimeType = application.getMimeType("request1.html");
    String realPath = application.getRealPath("/");
	application.log("application 내부 객체 로그 테스트");
%>
<h1>Application Example1</h1>
서블릿 컨테이너의 이름과 버전 : <%=serverInfo%><p/>
request1.html의 MIME Type : <%=mimeType%><p/>
로컬 파일 시스템 경로 : <%=realPath%>