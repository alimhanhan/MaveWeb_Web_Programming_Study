<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="ch16.*,java.util.Vector"%>
<jsp:useBean id="pMgr" class="ch16.PollMgr"/>
<%
	  int num = 0;

	  if(!(request.getParameter("num")==null || request.getParameter("num").equals(""))){
		 num = Integer.parseInt(request.getParameter("num"));
	  }
	
	  PollListBean plBean = pMgr.getList(num);
	  Vector<String> vlist = pMgr.getItem(num);

	  String question = plBean.getQuestion();
	  int type = plBean.getType();
	  int active = plBean.getActive();
%>
<link href="style.css" rel="stylesheet" type="text/css">
<form method="post" action="pollFormProc.jsp">
<table border="1" width="300">
	<tr>
		<td colspan="2">Q : <%=question%></td>
	</tr>
	<tr>
		<td colspan="2">
			<%
				for(int i=0; i<vlist.size(); i++){
					String itemList = vlist.get(i);
					if(type==1){
						out.println("<input type=checkbox name='itemnum' value='"+i+"'>");
					}else{
						out.println("<input type=radio name='itemnum' value='"+i+"'>");
					}
					out.println(itemList+"<br>");
				}//for end
			%>
		</td>
	</tr>
	<tr>
		<td>
			<%
				if(active==1){
						out.println("<input type='submit' value='투표'>");
					}else{
						out.println("투표");
					}
			%>
		</td>
		<td>
		<input type="button" value="결과" 
		onclick="javascript:window.open('pollView.jsp?num=<%=num%>',
		               'PollView','width=500, height=350')">
		</td>
	</tr>
</table>
<input type="hidden" name="num" value="<%=num%>">
</form>