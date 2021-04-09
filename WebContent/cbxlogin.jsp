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
<title>Login Status</title>
<link rel="icon" href="images/viit.jpg"/>
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
     <link href="styles.css" rel="stylesheet"/>
     <script type="text/javascript">
     
 	function postAdd() {
	
 		var ubkidq = $("#ubkid").val();
 		var ubookq = $("#ubook").val();
 		var authorq = $("#author").val();
 		var catq = $("#cat").val();
 		var rateq = $("#rate").val();
 		var desq = $("#des").val();
 		var sr1q = $("#sr1").val();
 		var sr2q = $("#sr2").val();
 		
 		
 		$.get("cbxaddpost.jsp", {
 			ubkid : ubkidq,
 			ubook : ubookq,
 			author : authorq,
 			cat : catq,
 			rate : rateq,
 			des : desq,
 			sr1 : sr1q,
 			sr2 : sr2q
 			
		}, doUpdate);
		
	
	}
 	
	function doUpdate(response) {

		var fulldatafromserver = response;
		var fulldatafromservertrimmed = fulldatafromserver.trim("");

		if (fulldatafromservertrimmed == "success") {
		     alert("posted add successfully");	
		 }

		else {
			alert("posted add un-succesful");	
		}
	}
     
	$(document).onClick(function(){
		$("#myModal").modal('show');
	});
     
     
     </script>
</head>
<body>
<%String regnumq = request.getParameter("regnum"); %>
<div class="container">
<!-- navigation bar -->
<nav class="navbar navbar-inverse navbar-default navbar-fixed-top">
  
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">CBX</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#"><span class="glyphicon glyphicon-home"></span> Welcome <%= regnumq %></a></li>
       <li><a href="#"><span class="glyphicon glyphicon-education"></span> E-Learning</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-comment"></span> Forums</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Post An Add</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="logout.html"><span class="glyphicon glyphicon-user"></span> Sign Off</a></li>
        &nbsp&nbsp
        </ul>
    </div>
 
</nav><br></br><br></br>
<!-- end of navigation -->


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
        		out.println("Login Failed");
        	}
        }
        
     
  %>
<br></br>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
    <li role="presentation"><a href="#postanAd" aria-controls="post an ad" role="tab" data-toggle="tab">Post an Ad</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
    
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
  
    <div role="tabpanel" class="tab-pane active" id="home"><p> <section id='plans'>
    <% PreparedStatement ps1 = con.prepareStatement("select * from CBXPOST");
    ResultSet rs1 = ps1.executeQuery();
   
    while(rs1.next()) { 
  
   String ubkidq = request.getParameter(rs1.getString(1));
   //String regnumq = request.getParameter(rs4.getString(1));
   System.out.println(ubkidq);
  // System.out.println(regnumq);
    out.println("<div class='container'><div class='row'><!-- item --><div class='col-md-4 text-center'><div class='panel panel-danger panel-pricing'><i class='fa fa-desktop'></i><h3><img src='images/acad.jpg' width='250' height='250'></img></h3><div class='panel-body text-center'><p><strong>" + rs1.getString(2) + "</strong></p></div><ul class='list-group text-center'><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(3) + "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(4) + "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(5) + "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(6)+ "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(7) + "</li><li class='list-group-item'><i class='fa fa-check'></i>" + rs1.getString(8) + "</li></ul><div class='panel-footer'><a href='#myModal' class='btn btn-lg btn-info btn1' data-toggle='modal'>BUY BOOK</a> <div id='myModal' class='modal fade'><div class='modal-dialog'><div class='modal-content'><div class='modal-header'><button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button><h4 class='modal-title'>Owner Details</h4></div><div class='modal-body'><p><div class='container panelch1'><div class='row'><div class='col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad'><div class='panel panel-info'><div class='panel-heading'><h3 class='panel-title'>Srujana Meher</h3></div><div class='panel-body'><div class='row'><div class='col-md-9 col-lg-9'><table class='table table-user-information'><tbody><tr><td>REGISTRATION ID:</td><td>12L31A05B6</td></tr><tr><td>DEPARTMENT:</td><td>CSE</td></tr><tr><td>YEAR:</td><td>4</td></tr><tr><td>CONTACT NUMBER:</td><td>8125428453</td></tr><tr><td>E-MAIL ID:</td><td><a href='#sruji.meher@gmail.com'>sruji.meher@gmail.com</a></td></tr></tbody></table></div></div></div></div></div></div></div></p><p class='text-warning'><small>This is the information of the seller.</small></p></div><div class='modal-footer'><button type='button' class='btn btn-primary' data-dismiss='modal'>Close</button></div></div></div></div></div></div></div>");
    }
    
    %>
        
    
    </section>
    </p></div>
     
   <!-- plans -->
    <div role="tabpanel" class="tab-pane" id="postanAd">
    <div class="container">
		<br /><br/>

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
  <form class="form-horizontal" action="cbxpostad.jsp">
  
  <div class="form-group">
    <label for="uname" class="col-sm-2 control-label">Registration I'd: </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="regnum" name="regnum" placeholder="Enter your I'd">
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
  			<option value="Academic Book">Academic Books</option>
  			<option value="Competitive & Training Book">Competitive and Training books</option>
  			<option value="Comic">Comics</option>
  			<option value="Reference Book">Reference books</option>
  	 </select>
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label for="rate" class="col-sm-2 control-label">Rating for your book: </label>
    <div class="col-sm-8">
      <select class="form-control" id="rate" name="rate" value="Rate">
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
  
  <button class="btn btnsm btn-primary" id="sub">Post ad</button>
  
  </form>
  </div>
   </div>
  </div>
  </div>
  </div>
 
                 </div>
        	</div>
   <!-- /Plans -->
		
		<div role="tabpanel" class="tab-pane" id="profile">
		<br></br>
		<% 
	PreparedStatement ps2 = con.prepareStatement("select * from CBX where REGNUM = ? ");
		ps2.setString(1,regnumq);
    ResultSet rs2 = ps2.executeQuery();
    while(rs2.next()) { 
   
    out.println("<div class='container'><div class='row'><div class='col-md-5  toppad  pull-right col-md-offset-3'><a href='#'>Edit Profile</a></div><br></br><div class='col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad'><div class='panel panel-info'><div class='panel-heading'><h3 class='panel-title'>" + rs2.getString(2) + "</h3></div><div class='panel-body'><div class='row'><div class='col-xs-10 col-sm-10 hidden-md hidden-lg'><br><dl><dt>DEPARTMENT:</dt><dd>" + rs2.getString(3) + "</dd><dt>YEAR:</dt><dd>" + rs2.getString(4) + "</dd><dt>CONTACT NUMBER:</dt><dd>" + rs2.getString(5) + "</dd><dt>E-MAIL ID:</dt><dd>" + rs2.getString(6) + "</dd></dl></div><div class='col-md-9 col-lg-9'><table class='table table-user-information'><tbody><tr><td>REGISTRATION ID:</td><td>"+ rs2.getString(1) +"</td></tr><tr><td>DEPARTMENT:</td><td>" + rs2.getString(3) + "</td></tr><tr><td>YEAR:</td><td>" + rs2.getString(4) + "</td></tr><tr><td>CONTACT NUMBER:</td><td>" + rs2.getString(5) + "</td></tr><tr><td>E-MAIL ID:</td><td><a href=' "+ rs2.getString(6) + "'>" + rs2.getString(6) + "</a></td></tr></tbody></table></div></div></div><div class='panel-footer'><a href='#' data-original-title='Edit profile' data-toggle='tooltip' type='button' class='btn btn-sm btn-warning'><i class='glyphicon glyphicon-edit'></i></a></div></div></div></div></div>");
    }
      }
      finally {
      	System.out.println("You are posting an ad");
      }
      
    %>
     


</div>
    </div>
 </div>  
<footer class="container-fluid ">
  <p class="foot"> &copy; 2016 Srujana Meher 
  <a href="#" > <img src="icons/facebook.png" class="fb"></img></a>
 <a href="#" > <img src="icons/twitter.png" class="twt"></img></a>
 <a href="#" > <img src="icons/googleplus.png" class="gp"></img></a>
</p>
 </footer>
</body>
</html>