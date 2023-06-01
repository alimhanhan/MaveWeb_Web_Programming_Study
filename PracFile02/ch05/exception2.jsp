<%@ page contentType="text/html;charset=EUC-KR"
                    isErrorPage="true"
%>
<%
   String message = exception.getMessage();
   String objectMessage = exception.toString();
%>
에러 메세지 : <b><%=message%></b><p/>
에러 실체의 클래스명과 에러 메세지  : <b><%=objectMessage%></b><p/>