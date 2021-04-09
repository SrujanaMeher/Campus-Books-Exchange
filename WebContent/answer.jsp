<?xml version="1.0" encoding="ISO-8859-1" ?>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Answers to the query's</title>
 <link rel="icon" href="images/viit.jpg" />
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
     <link href="bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
     <link href="styles.css" rel="stylesheet" />
</head>
<body>


 <%   
 String ansq = request.getParameter("ans");
 String q_idq = request.getParameter("q_id");
 
 try{
     Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
     PreparedStatement ps = con.prepareStatement("insert into FORUMS ANS = ? where Q_ID=?");
    System.out.println(ansq);
     ps.setString(1,ansq);
    ps.setString(2,null);
    ps.setString(3,null);
     int count = ps.executeUpdate();
  
     
     if(count == 1){
    	 out.println("<div class='panel panel-info'><div class='panel-heading'>Your Registration status is: Succesful </div><div class='panel-body'>Click here to View : <a href='forum.jsp'>FORUMS</a></div></div>");
     }
     else
    	 out.println("<div class='panel panel-info'><div class='panel-heading'>Your Registration status is: UN-Succesful :/ </div><div class='panel-body'>Click here to Register again : <a href='answer.html'>Answer it again</a></div></div>"); 
     
  
 }
  
   catch (Exception e) {
	   out.println(e.getLocalizedMessage());
   }
 
 
 finally {
	 out.println("");
	 
 }
 
   %>
</body>
</html>