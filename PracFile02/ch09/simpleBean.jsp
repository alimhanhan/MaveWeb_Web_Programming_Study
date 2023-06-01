<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="myBean" class="ch09.SimpleBean"/>
<jsp:setProperty name="myBean" property="message" value="빈을 쉽게 정복하자!" />
<html>
<body>
<h1>간단한 빈 프로그래밍</h1>
<br/>
Message1: <jsp:getProperty name="myBean" property="message" /><br>
Message2: <%=myBean.getMessage() %>
</body>
</html>