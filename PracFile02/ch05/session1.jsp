<%@ page contentType="text/html;charset=EUC-KR"
         session="true"
%>
<%
	  request.setCharacterEncoding("EUC-KR");

	  String id = request.getParameter("id");
	  String pwd = request.getParameter("pwd");

      session.setAttribute("idKey",id);
	  session.setMaxInactiveInterval(60*5);
%>
<h1>Session Example1</h1>
<form method="post" action="session1_1.jsp">
    1.가장 좋아하는 계절은?<br/>
	<input type="radio" name="season" value="봄">봄
	<input type="radio" name="season" value="여름">여름
	<input type="radio" name="season" value="가을">가을
	<input type="radio" name="season" value="겨울">겨울<p/>

	2.가장 좋아하는 과일은?<br/>
	<input type="radio" name="fruit" value="watermelon">수박
	<input type="radio" name="fruit" value="melon">멜론
	<input type="radio" name="fruit" value="apple">사과
	<input type="radio" name="fruit" value="orange">오렌지<p/>
	<input type="submit" value="결과보기">
</form>