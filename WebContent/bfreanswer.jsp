<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
 <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Answer Query</title>
<link rel="icon" href="images/viit.jpg" />
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
     <link href="bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
     <link href="styles.css" rel="stylesheet" />
</head>
<body>
<div class='container for'>
<form class="form-horizontal" method="post" action="answer.jsp">
  <div class="form-group">
    <label for="ans" class="col-sm-2 control-label">Your Question: </label>
    <div class="col-sm-8">
    
     <% 
     String q_idq = request.getParameter("q_id");
     try{
         Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
         PreparedStatement ps1 = con.prepareStatement("select * from FORUMS ");
         ResultSet rs1 = ps1.executeQuery();
   			out.println("rs1.getString(1)");
     }
     finally{
    	 out.println("");
    	 }
     %>
    </div>
    </div>
   <div class="form-group">
    <label for="ans" class="col-sm-2 control-label">Enter your answer: </label>
    <div class="col-sm-8">
    <textarea class="form-control" id="ans" name="ans" placeholder="Enter your answer"></textarea>
    </div>
  </div>
  
   <div class="form-group">
    
    <div class="col-sm-8">
      <button type=submit class="btn10">SUBMIT</button>
    </div>
  </div>
  
  </form>
</div>
</body>
</html>