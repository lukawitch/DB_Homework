<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
 <%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");

	Connection con = null;

	PreparedStatement pstmt = null;

	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";

	String user = "csuser";

	String pw = "cs1234";

	String sql="delete from comments where name=?";%>
<%try{

	



	Class.forName("oracle.jdbc.driver.OracleDriver");

	con = DriverManager.getConnection(url, user, pw);

	pstmt = con.prepareStatement(sql);

	pstmt.setString(1, name);


	pstmt.executeUpdate();

	

	pstmt.close();

	con.close();

	   response.sendRedirect("Clist.jsp");
}
%><% catch(SQLException e){out.println(e);
  System.out.println("���ῡ��");}%>
</body>
</html>