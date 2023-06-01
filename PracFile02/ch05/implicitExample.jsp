  <%@ page contentType="text/html;charset=EUC-KR"
       import="java.util.Date"
  %>
  <%
    	request.setCharacterEncoding("EUC-KR");
        String name = request.getParameter("name");
        String memo = request.getParameter("memo");
        Date date = new Date();
  %>
  <h2>메모장</h2>
  <table border="1">
  <tr>
     <td>성명</td>
     <td><%=name%></td>
  </tr>
  <tr>
     <td>메모</td>
     <td><%=memo%></td>
  </tr>
  <tr>
     <td>날짜</td>
     <td><%=date.toLocaleString()%></td>
  </tr>
  </table>