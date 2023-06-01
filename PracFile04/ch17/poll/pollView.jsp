<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="ch16.*,java.util.*"%>
<jsp:useBean id="pMgr" class="ch16.PollMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	int num = 0;
	if (request.getParameter("num") != null) {
		num = Integer.parseInt(request.getParameter("num"));
	}
	int sum = pMgr.sumCount(num);
	Vector<PollItemBean> vlist = pMgr.getView(num);
	PollListBean plBean = pMgr.getList(num);
	String question = plBean.getQuestion();
	Random r = new Random();
%>
<html>
<head>
<title>JSP Poll</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<table border="1" width="400">
			<tr>
				<td colspan="4"><b>Q : <%=question%></b></td>
			</tr>
			<tr>
				<td colspan="3"><b>√— ≈ı«•¿⁄ : <%=sum%>∏Ì</b></td>
				<td width="40">count</td>
			</tr>
			<%
				for (int i = 0; i < vlist.size(); i++) {
					PollItemBean piBean = vlist.get(i);
					String[] item = piBean.getItem();//æ∆¿Ã≈€ ex)±Ë≈¬»Ò
					int rgb = r.nextInt(255 * 255 * 255);
					String rgbt = Integer.toHexString(rgb);
					String hRGB = "#" + rgbt;
					int count = piBean.getCount();//≈ı«•ºˆ
					int ratio = (new Double(Math.ceil((double) count / sum * 100))).intValue();
			%>
			<tr>
				<td width="20" align="center"><%=i+1%></td>
				<td width="120"><%=item[0]%></td>
				<td>
					<table width="<%=ratio%>" height="15">
						<tr>
							<td bgcolor="<%=hRGB%>"></td>
						</tr>
					</table>
				</td>
				<td width="40"><%=count%></td>
			</tr>
			<%} //for%>
		</table>
		<p />
		<a href="javascript:window.close()">¥›±‚</a>
	</div>
</body>
</html>