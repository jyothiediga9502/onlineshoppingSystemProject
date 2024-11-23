<%@page import="java.util.*,java.sql.*,java.io.*,java.text.*"  %>
<%@page import="java.util.*" %> 
<%
String name = request.getParameter("uname");
String pass = request.getParameter("upass");
String phone = request.getParameter("uphone");
String email = request.getParameter("uemail");
String city = request.getParameter("ucity");
String area = request.getParameter("uarea");
String pincode = request.getParameter("upincode");

	
	try{
	Driver d = new oracle.jdbc.driver.OracleDriver();
	DriverManager.registerDriver(d);
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","jyothi");
	PreparedStatement pstmt = con.prepareStatement("insert into juser values(?,?,?,?,?,?,?)");
	pstmt.setString(1,name);
	pstmt.setString(2,phone);
	pstmt.setString(3,email);
	pstmt.setString(4,city);
	pstmt.setString(5,area);
	pstmt.setString(6,pincode);
	pstmt.setString(7,pass);
	pstmt.executeUpdate();
	}catch(SQLException e){
	
	}
System.out.println("Inserted");
%>