<%@page import="java.util.*,java.sql.*,java.io.*,java.text.*"  %>
<%@page import="java.util.*" %> 
<%
String name = request.getParameter("pname");
String id = request.getParameter("pid");
String price = request.getParameter("pprice");
String email = request.getParameter("pemail");
String pincode = request.getParameter("ppincode");
String area = request.getParameter("parea");
String confirm = request.getParameter("pconfirm");
String username = request.getParameter("puname");
String pass = request.getParameter("ppass");
	
	try{
	Driver d = new oracle.jdbc.driver.OracleDriver();
	DriverManager.registerDriver(d);
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","jyothi");
	PreparedStatement pstmt = con.prepareStatement("insert into jproduct values(?,?,?,?,?,?,?,?,?)");
	
	pstmt.setString(1,username);
	pstmt.setString(2,pass);
	pstmt.setString(3,name);
	pstmt.setString(4,id);
	pstmt.setString(5,price);
	pstmt.setString(6,email);
	pstmt.setString(7,pincode);
	pstmt.setString(8,area);
	pstmt.setString(9,confirm);
	pstmt.executeUpdate();
	}catch(SQLException e){
	
	}
System.out.println("Inserted");
%>