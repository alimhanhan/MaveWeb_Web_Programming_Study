<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tlds/ConnectionTag.tld" %>
<h1>스크립트 변수 생성하기</h1>
<tag:db id="db"/>
<%
   Connection conn = db.getConnection();
   PreparedStatement pstmt=conn.prepareStatement("select * from tblMember");
   ResultSet rs = pstmt.executeQuery();
   if(rs.next()){
%>
당신의 이름은?  : <%=rs.getString("name")%><br/>
당신의 아이디는? :  <%=rs.getString("id")%>
<%}
   rs.close();
   pstmt.close();
   conn.close();
%>
