<%@ page language="java" import="java.util.*,java.io.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%

String name=request.getParameter("name");
String pass=request.getParameter("pass");
String uname="";
String password="";
try{
Driver d = new oracle.jdbc.driver.OracleDriver();
DriverManager.registerDriver(d);
Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","jyothi");
Statement stmt = c.createStatement();
ResultSet res = stmt.executeQuery("select * from juser");
while(res.next()){

 uname=res.getString(1);
 password=res.getString(7);
 if(name.equals(uname) && pass.equals(password)){
	out.println("userRegisterd Successfully");
	break;
}
res.next();
if(!res.next()){
out.println("you may have entered wrong data");
}
}}catch(SQLException e){

}
 %>
 <html>
<center>
<a href="/JSPProject/index.jsp"> home page</a>
</center>
</html>

