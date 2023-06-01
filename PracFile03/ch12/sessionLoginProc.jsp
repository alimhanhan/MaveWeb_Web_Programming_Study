<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="regMgr" class="ch12.RegisterMgr" />
<%
    String id = "";
	String pwd = "";
	if(request.getParameter("id") != null)  
	   id  = request.getParameter("id");
	if(request.getParameter("pwd") != null) 
	   pwd  = request.getParameter("pwd");
	if(regMgr.loginRegister(id, pwd)){
		session.setAttribute("idKey",id);
%>
	<script> 
	  alert("로그인 되었습니다.");
      location.href="sessionLoginOK.jsp";
	</script>
<%	}else{ %>
	<script>
	  alert("로그인 되지 않았습니다.");
      location.href="sessionLogin.jsp";
	</script>
<%}%>