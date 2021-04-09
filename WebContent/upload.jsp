<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Uploading Your File</title>
	 <link rel="icon" href="images/viit.jpg" />
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
     <link href="bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
     <link href="styles.css" rel="stylesheet" />
</head>
<body>

<% 
String file_idq = request.getParameter("file_id");
String filenameq = request.getParameter("filename");
String fdataq = request.getParameter("fdata");
String fcategoryq = request.getParameter("fcategory");
Connection con = null;
PreparedStatement ps = null;
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
    ps = con.prepareStatement("insert into ELEARN values (FILE_ID, FILENAME, FDATA, FCATEGORY)(?,?,?,?)");
    FileInputStream inputStream = new FileInputStream(new File(fdataq));
    ps.setString(1,file_idq);
    ps.setString(2,filenameq);
    ps.setBinaryStream(3,inputStream);
    ps.setString(4,fcategoryq);
    
    int count  = ps.executeUpdate();
    if (count == 1) {
  	  out.println("Data Entered succesfully");
   }
   else {
   
   out.println("Couldnt enter successfully <a href='upload.html'>RE-TRY</a>");
  con.close();
   }

}
   catch (Exception e) {
   System.out.println(e.getMessage());
   } 


finally{
	out.println("");
}
%>
</body>
</html>