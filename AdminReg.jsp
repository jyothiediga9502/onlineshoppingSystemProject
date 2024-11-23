<%@page import="java.util.*,java.sql.*,java.io.*,java.text.*"  %>
<%@page import="java.util.*" %> 
<%
String name = request.getParameter("aname");
String pword = request.getParameter("apass");

	
	try{
	Driver d = new oracle.jdbc.driver.OracleDriver();
	DriverManager.registerDriver(d);
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","jyothi");
	PreparedStatement pstmt = con.prepareStatement("insert into admin values(?,?)");
	pstmt.setString(1,name);
	pstmt.setString(2,pword);
	pstmt.executeUpdate();
	}catch(SQLException e){
	
	}
System.out.println("Inserted");
%>
