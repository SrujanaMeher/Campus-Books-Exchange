<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta charset="ISO-8859-1"/>
	<meta charset="UTF-8"/>
	

<title>CBX</title>

	 <link rel="icon" href="images/viit.jpg"/>
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"/>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
     <link href="styles.css" rel="stylesheet"/>
     
</head>
<body>
<%String regnumq = request.getParameter("regnum"); %>
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
        <li><a href="forum.jsp"><span class="glyphicon glyphicon-comment"></span> Forums</a></li>
        <li class="active"><a href="cbxpost.html"><span class="glyphicon glyphicon-shopping-cart"></span> Post An Add</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="cbxsignin.html"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="cbxreg.html"><span class="glyphicon glyphicon-lock"></span> Register</a></li>
      </ul>
    </div>
  </div>
</nav><br><br>
<!-- end of navigation -->

<div>
<%
      
      String upwdq = request.getParameter("upwd");
 Connection con = null;
      try{
     Class.forName("oracle.jdbc.driver.OracleDriver");
      con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
     PreparedStatement ps = con.prepareStatement("select UPWD from CBX where REGNUM=?");
     ps.setString(1,regnumq);
    
     
         ResultSet rs = ps.executeQuery();
     
         
        while (rs.next()){
        	String user = rs.getString(1);
        	
        	if(user.equals(upwdq)){
        		out.println("This is the Login space of user : " + regnumq);
        	}
        	else{
        		out.println("Login Failed ");
        	}
        }
      
      }   
      finally {
    	  out.println("posting an ad");
      }
  %>

<!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation"><a href="cbxlogin.jsp" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
    <li role="presentation" class="active"><a href="cbxpost.jsp" aria-controls="profile" role="tab" data-toggle="tab">Post an Ad</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Profile</a></li>
 </ul>
 
 <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home"></div>
    <div role="tabpanel" class="tab-pane" id="profile"><p>

<!-- Start of Form -->
<div class="container">
<div class="container-fluid">
<br><br><br><br><br>
<div class="row">
  <div class="col-md-12">
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Post an Add.!</h3>
  </div>
  <br><br><br>
  <form class="form-horizontal" method="post" action="cbxaddpost.jsp" enctype="multipart/form-data">
  
  <div class="form-group">
    <label for="uname" class="col-sm-2 control-label">Registration I'd: </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="regnum" name="regnum" placeholder="Enter your I'd" required>
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label for="ubkid" class="col-sm-2 control-label">Choose a book I'D: </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="ubkid" name="ubkid" placeholder="Enter any four-digit number" maxlength="4">
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label for="ubook" class="col-sm-2 control-label">Name of the Book: </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="ubook" name="ubook" placeholder="Enter book name">
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label for="author" class="col-sm-2 control-label">Author of the book: </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="author" name="author" placeholder="author's name">
    </div>
  </div><br><br> 
  
  <div class="form-group">
    <label for="cat" class="col-sm-2 control-label">Choose Category: </label>
    <div class="col-sm-8">
      <select class="form-control" id="cat" name="cat">
  			<option value="-1">Choose Category of book</option>
  			<option value="AB">Academic Books</option>
  			<option value="CTB">Competitive and Training books</option>
  			<option value="COM">Comics</option>
  			<option value="RB">Reference books</option>
  	 </select>
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label for="rate" class="col-sm-2 control-label">Rating for your book: </label>
    <div class="col-sm-8">
      <select class="form-control" id="rate" name="rate">
      	<option hidden>Give rating for the book</option>
  		<option value="1">1</option>
  		<option value="2">2</option>
  		<option value="3">3</option>
  		<option value="4">4</option>
  		<option value="5">5</option>
	</select> 
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label for="des" class="col-sm-2 control-label">Description: </label>
    <div class="col-sm-8">
      <textarea class="form-control" id="des" name="des"></textarea>
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label for="sr1" class="col-sm-2 control-label">Book for: </label>
    <div class="col-sm-8">
      <input type="checkbox" id="sr1" name="sr1" value="sale">Sale<br>
      <input type="checkbox" id="sr2" name="sr2" value="rent">Rent<br>
     
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label for="pic" class="col-sm-2 control-label">Insert image: </label>
    <div class="col-sm-8">
      <input type="file" class="form-control" id="pic" name="pic">
    </div>
  </div><br><br>
  
  <button type="submit" class="btn btnsm btn-primary" id="sub">Register</button>
  </form>
  <!-- end of form -->
  </p></div>
 
  <div role="tabpanel" class="tab-pane" id="messages">...</div>
  </div>
   </div>
  </div>
  </div>
  </div>
  </div>
  </div>
</body>
</html>