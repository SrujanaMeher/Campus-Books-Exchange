<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
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
<title>Books Display</title>
<link rel="icon" href="images/viit.jpg"/>
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
     <link href="styles.css" rel="stylesheet"/>
 
</head>
<body>
     <%
     String regnumq = request.getParameter("regnum"); %>
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
        <li class="active"><a href="cbxmain.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
        <li><a href="e-learning.jsp"><span class="glyphicon glyphicon-education"></span> E-Learning</a></li>
        <li><a href="forum.jsp"><span class="glyphicon glyphicon-comment"></span> Forums</a></li>
        <li><a href="cbxpost.html"><span class="glyphicon glyphicon-shopping-cart"></span> Post An Add</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="cbxsignin.html"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="cbxreg.html"><span class="glyphicon glyphicon-lock"></span> Register</a></li>
      </ul>
    </div>
  </div>
</nav>
<!-- end of navigation -->
<br><br><br></br></br></br>

<% String upwdq = request.getParameter("upwd");
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
      
       
     
   PreparedStatement ps1 = con.prepareStatement("select * from CBXPOST");
    ResultSet rs1 = ps1.executeQuery();
    while(rs1.next()) { 
   
   String ubkidq = request.getParameter(rs1.getString(1));
   System.out.println(ubkidq);
   
    out.println("<div class='container'><div class='row'><!-- item --><div class='col-md-4 text-center'><div class='panel panel-danger panel-pricing'><i class='fa fa-desktop'></i><h3><img src='images/acad.jpg' width='250' height='250'></img></h3><div class='panel-body text-center'><p><strong>" + rs1.getString(2) + "</strong></p></div><ul class='list-group text-center'><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(3) + "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(4) + "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(5) + "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(6)+ "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(7) + "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(8) + "</li></ul><div class='panel-footer'><a href='#myModal' class='btn btn-lg btn-info btn1' data-toggle='modal'>BUY BOOK</a> <div id='myModal' class='modal fade'><div class='modal-dialog'><div class='modal-content'><div class='modal-header'><button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button><h4 class='modal-title'>Owner Details</h4></div><div class='modal-body'><p>Do you want to save changes you made to document before closing?</p><p class='text-warning'><small>If you don't save, your changes will be lost.</small></p></div><div class='modal-footer'><button type='button' class='btn btn-primary' data-dismiss='modal'>Close</button><button type='button' class='btn btn-primary'>Save changes</button></div></div></div></div></div></div></div>");
    }
      }
      finally{
    	 out.println(""); 
      }
     
     
    %>
</body>
</html>