 <%@ page contentType="text/html;charset=EUC-KR"%>
 <h1>Scriptlet Example1</h1>
<%!
       int one;
       String msgOne;
%>
<%
      int two = 31;
      String msgTwo = "Scriptlet Example";
%>
<%= two + " : " + msgTwo%><br/>
<%=application.getRealPath("/")%>