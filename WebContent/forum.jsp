<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<!--[if lt IE 7 ]>
 <html class="ie6" lang="en-US"> <![endif]--><!--[if IE 7 ]> 
<html class="ie7" lang="en-US"> <![endif]--><!--[if IE 8 ]>
 <html class="ie8" lang="en-US"> <![endif]--><!--[if IE 9 ]>
 <html class="ie9" lang="en-US"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html class="" lang="en-US"> <!--<![endif]-->

<head>

	<meta charset="ISO-8859-1"/>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="CBX Home Page"/>
    <meta name="author" content="Srujana Meher" />

<title>CBX Forums</title>
	 <link rel="icon" href="images/viit.jpg"/>
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
     <link href="styles.css" rel="stylesheet"/>
     
</head>
<body>
<!-- navigation bar -->
<nav class="navbar navbar-inverse navbar-default navbar-fixed-top">
  <div class="container-fluid">
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
        <li><a href="cbxmain.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
        <li><a href="e-learning.jsp"><span class="glyphicon glyphicon-education"></span> E-Learning</a></li>
        <li class="active"><a href="forum.jsp"><span class="glyphicon glyphicon-comment"></span> Forums</a></li>
        <li><a href="cbxpost.html"><span class="glyphicon glyphicon-shopping-cart"></span> Post An Add</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="cbxsignin.html"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="cbxreg.html"><span class="glyphicon glyphicon-lock"></span> Register</a></li>
      </ul>
    </div>
  </div>
</nav><br><br><br> <br> <br>
 <!-- end of navigation -->
 
 <div class="alert alert-warning" role="alert">
  <strong>Note!</strong> &nbsp Please ensure that you are logged in, else log in <a href="cbxsignin.html" class="alert-link">Login</a> 
</div>

<!-- Start of Form -->
<div class="container">
<div class="container-fluid">
<br><br><br><br><br>
<div class="row">
  <div class="col-md-12">
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Forums</h3>
  </div>
  <br><br><br>
  <form class="form-horizontal" method="post" action="forums.jsp">
  
  <div class="form-group">
    <label for="Q_ID" class="col-sm-2 control-label">Question-I'd: </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="Q_ID" name="Q_ID" placeholder="Enter a four-digit id">
    </div>
  </div><br><br>
    
  <div class="form-group">
    <label for="USER_NAME" class="col-sm-2 control-label">Name: </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="USER_NAME" name="USER_NAME" placeholder="Enter name">
    </div>
  </div><br><br>
  
  
  
  <div class="form-group">
    <label for="QUES" class="col-sm-2 control-label">Enter your Question: </label>
    <div class="col-sm-8">
      <textarea class="form-control" id="QUES" name="QUES" placeholder="Enter question?"></textarea>
    </div>
  </div><br><br>
  
  
  

  
 <button class="btn btnsm btn-primary" id="sub">Post my question</button>
  </form>
  </div>
   </div>
  </div>
  </div>
  </div>
 <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home"><p> <section id='plans'>
            <%   try{
	     Class.forName("oracle.jdbc.driver.OracleDriver");
	     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
             PreparedStatement ps1 = con.prepareStatement("select * from FORUMS");
    ResultSet rs1 = ps1.executeQuery();
    
   %>
    	<div class='container'><div class='row'><table class='table table-information'>
    
    <%	while(rs1.next()) { %>
    	
    	
    	<%
    	out.println("<form action='answer.jsp' method='post'><tr><th>Name: "+rs1.getString(2)+" </th><td>Question: "+rs1.getString(3)+" </td><td>Answer: "+ rs1.getString(4) +"<td><button type='submit'><a href='answer.html'>Answer</a></button></td></tr></form>");
    }
    %>
    
    </table></div></div>
	<%      }
      
       catch (Exception e) {
    	   System.out.println(e.getLocalizedMessage());
    	   out.println(e.getLocalizedMessage());
       }
             %>
    </section>
    </p></div>
  </body>
  </html>
 