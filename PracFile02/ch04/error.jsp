<%@page contentType="text/html; charset=EUC-KR"	
  isErrorPage="true"%>
<h1>Error Page</h1>
다음과 같은 예외가 발생하였습니다.<p/>
<%=exception.getMessage() %>