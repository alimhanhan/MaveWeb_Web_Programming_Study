<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/PageTag.tld" %>
<%
  int start=1;
  int end=10;
  int nowPage=1;
    if(request.getParameter("nowPage") !=null) {
      nowPage=Integer.parseInt(request.getParameter("nowPage"));
     }
%>
<h1>속성 값을 갖는 태그</h1>
현재 페이지는 <b><%=nowPage%></b> 입니다.<br/>
<font color="red">
<tag:page from='<%=start%>' to='<%=end%>'/>
</font>