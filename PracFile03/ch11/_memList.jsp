<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	int num, age;
	String id, name, gender, post_num, address, tel;
	int counter = 0;
	
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "123456");//Connection 생성
		stmt = conn.createStatement();//Statement 생성
		rs = stmt.executeQuery("select * from mem"); //질의실행결과를 ResultSet에 담는다.
%>
<h2> >> mem테이블 목록 보기</h2>
<table border=1 width=700 style="border-collapse: collapse;">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>이름</th>
		<th>성별</th>
		<th>우편번호</th>		
		<th>주소</th>
		<th>전화번호</th>
		<th>나이</th>		
	</tr>
	<%
	if ( rs != null ){
		while( rs.next() ){
			num = rs.getInt("num");
			id = rs.getString("id");
			name = rs.getString("name");
			gender = rs.getString("gender");
			post_num = rs.getString("post_num");
			address = rs.getString("address");
			tel = rs.getString("tel");
			age = rs.getInt("age");

			counter++;
		%>
	<tr>
		<td><%=num %></td>
		<td><%=id %></td>
		<td><%=name %></td>
		<td><%=gender %></td>
		<td><%=post_num %></td>
		<td><%=address %></td>
		<td><%=tel %></td>
		<td><%=age %></td>
	</tr>		
		<%
		}  //end while
	}  //end if
	%>

</table>
등록 인원 : <%=counter %>명
<%	
	} catch (SQLException sqlException) {
		System.out.println("sql exception");
	} catch (Exception exception) {
		System.out.println("exception");
	} finally {
		if (rs != null)
			try {rs.close();} 
			catch (SQLException ex) {}
		if (stmt != null)
			try {stmt.close();} 
			catch (SQLException ex) {}
		if (conn != null)
			try {conn.close();} 
			catch (Exception ex) {}
	}
%>

</body>
</html>