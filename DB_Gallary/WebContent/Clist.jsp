<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%@include file="commom.jsp"%>
</head>
<body>
<%@ page import="java.sql.*" %>
 <%@include file="nav.jsp"%>
 <div class="container">
      <br>
   <br>
   <br>

      <div class="row">
<table class="table table-hover">

<tr><th>번호</th><th>이름</th><th>소감</th><th>작성일</th></tr>

<%
Connection con = null;

PreparedStatement pstmt = null;

ResultSet rs = null;

String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

String user = "csuser";

String pw = "cs1234";

String sql = "select * from comments order by seq desc";
try{




	 Class.forName("oracle.jdbc.driver.OracleDriver");
	    con = DriverManager.getConnection(url, user, pw);
	    System.out.println("연결확인");

	pstmt = con.prepareStatement(sql);

	rs = pstmt.executeQuery();

	

	while(rs.next()) {

			int seq = rs.getInt(1);

			String name = rs.getString(2);

			String pass = rs.getString(3);

			String content = rs.getString(4);

			String rdate = rs.getString(5);

		%>

			<tr><td><%=seq%></td>

				<td><%=name %></td>

				<td><%=content %></td>

				<td><%=rdate %></td>

			</tr>

		<%
	

	



	}}catch(SQLException e){out.println(e);
	  System.out.println("연결에러");}

%>

</table>
</div>
</div>
</body>
</html>