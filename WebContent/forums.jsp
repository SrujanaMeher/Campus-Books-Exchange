<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>POSTING QUESTION</title>
<script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
     <link href="styles.css" rel="stylesheet"/>
</head>
<body>
    <div class="container">
<!-- navigation bar -->
<nav class="navbar navbar-inverse navbar-default navbar-fixed-top">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="cbxmain.html">CBX</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="cbxmain.html"><span class="glyphicon glyphicon-home"></span> Welcome </a></li>
        <li><a href="e-learning.jsp"><span class="glyphicon glyphicon-education"></span> E-Learning</a></li>
        <li><a href="forum.jsp"><span class="glyphicon glyphicon-comment"></span> Forums</a></li>
        <li><a href="cbxpost.html"><span class="glyphicon glyphicon-shopping-cart"></span> Post An Add</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="cbxsignin.html"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="cbxreg.html"><span class="glyphicon glyphicon-lock"></span> Register</a></li>
      </ul>
    </div>
 
</nav><br></br><br></br>
<!-- end of navigation -->
  
  
  <% 
  String Q_IDq = request.getParameter("Q_ID");
  String USER_NAMEq = request.getParameter("USER_NAME");
  String QUESq = request.getParameter("QUES");
 
  try{
	     Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
	     PreparedStatement ps = con.prepareStatement("insert into FORUMS (Q_ID,USER_NAME,QUES)values(?,?,?)");
	    // InputStream inputStream = new FileInputStream(new File(picq));
	 //    System.out.println(inputStream);
	      ps.setString(1,Q_IDq);
	     ps.setString(2,USER_NAMEq);
	     ps.setString(3,QUESq);
	    
	   //  ps.setBlob(9,inputStream);
	     
           ps.executeUpdate();
     
            System.out.println("POSTED SUCESSFULLY<a href='forum.jsp'>Go back</a>");
            
            



            
  }
      
       catch (Exception e) {
    	   System.out.println(e.getLocalizedMessage());
    	   out.println(e.getLocalizedMessage());
       }
   
    
   
  
  
  
  
  %>
  
  <p> YOUR QUESTION IS SUCCESSFULLY POSTED</P>
  <P>HOPE U WIL GET SOME ANSWER!! :)</P>
  <a href='forum.jsp'>Go back</a>

</body>
</html>