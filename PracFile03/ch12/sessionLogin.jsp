<%@ page contentType="text/html; charset=EUC-KR" %>
<%
 		String id = (String)session.getAttribute("idKey");  
 		if(id!=null){
%>
  <script>
   alert("로그인 되었습니다");
   location.href = "sessionLoginOK.jsp";
  </script>
<% } %>
<html>
<head>
<title>Simple LogIn</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#996600" topmargin="100">
<h2 align="center">Session 로그인</h2>
<table width="75%" border="1" align="center" bordercolor="#660000" bgcolor="#FFFF99">
  <tr bordercolor="#FFFF99"> 
    <td height="190" colspan="7"> 
	   <form method="post" action="sessionLoginProc.jsp">
        <table width="50%" border="1" align="center" cellspacing="0" cellpadding="0">
          <tr bordercolor="#FFFF66"> 
            <td colspan="2"><div align="center">Log in</div></td>
          </tr>
          <tr > 
            <td width="47%"><div align="center">ID</div></td>
            <td width="53%"><div align="center"><input name="id"></div></td>
          </tr>
          <tr> 
            <td><div align="center">PWD</div></td>
            <td><div align="center"><input name="pwd"></div></td>
          </tr>
          <tr> 
            <td colspan="2"><div align="center"> 
                <input type="submit" value="login">&nbsp; 
                <input type="reset" value="reset">
              </div></td>
          </tr>
        </table>
      </form></td>
  </tr>
</table>
</body>
</html>