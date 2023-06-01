<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="test" class="ch05.SimpleBean"/>
<jsp:setProperty name="test" property="message" value="빈을 쉽게 정복하자!" />
<html>
<body>
<h1>간단한 빈 프로그래밍</h1>
<br/>
Message: <jsp:getProperty name="test" property="message" />
</body>
</html>