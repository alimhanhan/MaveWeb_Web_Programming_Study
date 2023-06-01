<%@ page contentType="text/html; charset=EUC-KR" %>
<% 
		String id = (String)session.getAttribute("idKey");
		if(id == null){
%> 
<script>
	   alert("로그인 되지 않았습니다.");
	   location.href="sessionLogin.jsp";
</script>
<%	}	%>
<html>
<head>
<title>Simple LogIn</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#996600" topmargin="100">
<table width="75%" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#660000" bgcolor="#FFFF99">
  <tr bordercolor="#FFFF99"> 
    <td height="190" colspan="7"> 
      <table width="50%" border="1" align="center" cellspacing="0" cellpadding="0">
        <tr bordercolor="#FFFF66"> 
          <td colspan="2"><div align="center">Log On Page</div></td>
        </tr>
        <tr >         
          <td><div align="center"> 
           <strong><%=id%></strong>
			님이 로그인 하셨습니다. 
            </div></td>
          <td><div align="center"> 
           <a href="sessionLogout.jsp"><strong>LOG OUT</strong></a>
            </div></td>
        </tr>
      </table>
     </td>
  </tr>
</table>
</body>
</html>