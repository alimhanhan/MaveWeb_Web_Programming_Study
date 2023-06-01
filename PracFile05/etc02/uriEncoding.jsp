<%@ page contentType="text/html;charset=EUC-KR" %>
<h1>server.xml URIEncoding="EUC-KR" 등록</h1>
<%
	   String name = request.getParameter("name");
       if(name==null) name = "요청 받은 값이 없음";
%>
요청받은 한글 name 값은? <b><%=name %></b><p/>
<a href="uriEncoding.jsp?name=JSPStudy">JSPStudy</a>&nbsp;&nbsp;
<a href="uriEncoding.jsp?name=제이 에스 피 스타디">제이 에스 피 스타디</a>



