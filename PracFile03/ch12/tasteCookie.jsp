<%@ page contentType="text/html; charset=EUC-KR" %>
<html>
<head>
	<title>Taste Cookie</title>
</head>
<body>
<h1>Example Cookie</h1>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0; i<cookies.length;++i){
			if(cookies[i].getName().equals("myCookie")){
%>
				Cookie Name : <%=cookies[i].getName()%><br/>
				Cookie Value : <%=cookies[i].getValue()%><br/>
<%
			}
		}
	}
%>
</body>
</html>