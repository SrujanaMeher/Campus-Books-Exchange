<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ page language="java"%>
 <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
 <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Image into database</title>
</head>
<body>
<% 
String regnumq = request.getParameter("regnum");
String ubkidq = request.getParameter("ubkid");
String ubookq = request.getParameter("ubook");
String authorq = request.getParameter("author");
String catq = request.getParameter("cat");
String rateq = request.getParameter("rate");
String desq = request.getParameter("des");
String sr1q = request.getParameter("sr1");
String sr2q = request.getParameter("sr2");
String picq = request.getParameter("pic");
 Connection con = null;
 PreparedStatement ps = null;
 
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
 ps = con.prepareStatement("insert into CBXPOST (UBKID, UBOOK, AUTHOR, CAT, RATE, DES, SR1, SR2, PIC, REGNUM)values (?,?,?,?,?,?,?,?,?,?)");
 FileInputStream inputStream = new FileInputStream(picq);
 ps.setString(1,ubkidq);
 ps.setString(2,ubookq);
 ps.setString(3,authorq);
 ps.setString(4,catq);
 ps.setString(5,rateq);
 ps.setString(6,desq);
 ps.setString(7,sr1q);
 ps.setString(8,sr2q);
 ps.setBlob(9,inputStream);
 ps.setString(10,regnumq);


  int count  = ps.executeUpdate();
  if (count == 1) {
	  out.println("Data Entered succesfully");
 }
 else {
 
 out.println("Couldnt enter successfully <a href='cbxpost.html'>RE-TRY</a>");
con.close();
 }

 } 
 catch (Exception e) {
 out.println("Entry Error=" + e.getLocalizedMessage());
 } 

%>
</body>
</html>

