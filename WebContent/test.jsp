<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
 <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
 <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Getting Image from database</title>
</head>
<body>
<% 
 String user = request.getParameter("ubkid");
 Blob image = null;
 Connection con = null;
 byte[ ] imgData = null ;
 PreparedStatement ps = null;
 ResultSet rs = null;
try {
	  Class.forName("oracle.jdbc.driver.OracleDriver");
      con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
     ps = con.prepareStatement("select PIC from CBXPOST where UBKID=?");
   
  ps.setString(1,user);
 rs = ps.executeQuery();
  if (rs.next()) {
 image = rs.getBlob(1);
 imgData = image.getBytes(1,(int)image.length());
 }
 else {
 out.println("Display Blob Example");
 out.println("image not found for given id>");
 return;
 }
// displaying the image
 response.setContentType("image/gif");
 OutputStream o = response.getOutputStream();
 o.write(imgData);
 o.flush();
 o.close();
 } 
 catch (Exception e) {
 out.println("Unable To Display image");
 out.println("Image Display Error=" + e.getMessage());
 return;
 } 
 finally {
 try {
 rs.close();
 ps.close();
 con.close();
 } catch (SQLException e) {
 e.printStackTrace();
 }
}
%>
</body>
</html>

