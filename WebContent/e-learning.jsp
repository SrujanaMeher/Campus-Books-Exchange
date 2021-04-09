<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>E-Learning</title>
	 <link rel="icon" href="images/viit.jpg" />
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
     <link href="bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet" />
     <link href="styles.css" rel="stylesheet" />
</head>
<body id="pagetop">
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
        <li class="active"><a href="e-learning.jsp">
        <span class="glyphicon glyphicon-education"></span> E-Learning</a>
        <!--  	<ul class="dropdown-menu" aria-labelledby="dropdownMenu4">
        	<li><a href="#">E-text books</a></li>
 			<li><a href="#">PDf's</a></li>
  			<li><a href="#">Materials</a></li>
			</ul> -->
        </li>
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

 <!-- Header -->
    <header>
    <div class="index">
        <div class="container">
        	<div class="intro-text">
      		 	<div class="intro-lead-in">Welcome To Our E-Learning Portal!</div>
                <div class="intro-heading">It's Nice To Meet You</div>
                <a href="#services" class="page-scroll btn btn-xl">Tell Me More</a>
            </div>
       </div>
   </div>
    </header>
    
<!-- Services Section -->
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">CATALOG</h2>
                    <h3 class="section-subheading text-muted">Enjoy the taste of learning!</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <img src="icons/graduationcap.png" width="50px" height="50px">
                    </span>
                    <h4 class="service-heading">E-Books and PDF's </h4>
                    <p class="text-muted">"Make your work easy by downloading requisite e-books."</p>
                    <a href="#e-book" class="page-scroll btn btn-xl">download</a>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <img src="icons/files.png" width="50px" height="50px">
                    </span>
                    <h4 class="service-heading">Previous Year Question Papers</h4>
                    <p class="text-muted">"You can refer to the previous year question papers for quick revision."</p>
                    <a href="#quespaper" class="page-scroll btn btn-xl">download</a>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <img src="icons/graduationcap.png" width="50px" height="50px">
                    </span>
                    <h4 class="service-heading">Classroom materials</h4>
                    <p class="text-muted">"The topics dicussed in class by lecturers are made available here."</p>
                    <a href="#material" class="page-scroll btn btn-xl">download</a>
                </div>
            </div>
        </div>
    </section>
    
   
<!-- E-books and pdf's Section -->
    <section id="e-book" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h21 class="section-heading">E-books and Pdf's</h21>
                    <h3 class="section-subheading text-muted">
                    <a href="upload.html" class="btn btn-xl2">Upload a file</a>
                    </h3>
                </div>
            </div>
            <div class="row">
            <div class="col-lg-12 text-center">
				<table class="table table-striped table-hover">
  					<thead>
    					<tr>
      						<th>#</th>
      						<td colspan="5" class="bold">File Name</td>
      						<td class="bold">Download</td>
    					</tr>
  					</thead>
  					<tbody>
    					<tr>
      						<th scope="row">1</th>
      						<td colspan="5">Multimedia Application Development</td>
      						<td><a href="icons/MMAD.pdf" download="MMAD" class="page-scroll btn btn-xl2">download</a></td>
    					</tr>
    					<tr>
      						<th scope="row">2</th>
     						<td colspan="5">Distributed Systems</td>
      						<td><a href="icons/ds.pdf" download="Distributed Systems" class="page-scroll btn btn-xl2">download</a></td>
    					</tr>
    					<tr>
      						<th scope="row">3</th>
      						<td colspan="5">Computer Network Security</td>
      						<td><a href="icons/E-Commerce.pdf" download="E-Commerce" class="page-scroll btn btn-xl2">download</a></td>
    					</tr>
  					</tbody>
				</table>
             </div>
            <p class="pull-right"><a href="e-learning.jsp">Back to top</a></p>
        </div>
    </section>   
    
    
<!-- Previous year question papers Section -->
    <section id="quespaper" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h21 class="section-heading">Previous Year Question Papers</h21>
                    <h3 class="section-subheading text-muted">
                    <a href="upload.html" class="btn btn-xl2">Upload a file</a>
                    </h3>
                 </div>
              </div>
            <div class="row">
            <div class="col-lg-12 text-center">
				<table class="table table-striped table-hover">
  					<thead>
    					<tr>
      						<th>#</th>
      						<td colspan="5" class="bold">File Name</td>
      						<td class="bold">Download</td>
    					</tr>
  					</thead>
  					<tbody>
    					<tr>
      						<th scope="row">1</th>
      						<td colspan="5">Distributed Systems Previous Papers</td>
      						<td><a href="ds.docx" download="DS Papers" class="page-scroll btn btn-xl2">download</a></td>
    					</tr>
    					<tr>
      						<th scope="row">2</th>
     						<td colspan="5">E-Commerce Papers</td>
      						<td><a href="ecom.docx" download="E-Commerce Papers" class="page-scroll btn btn-xl2">download</a></td>
    					</tr>
    					<tr>
      						<th scope="row">3</th>
      						<td colspan="5">Cloud Computing</td>
      						<td><a href="CloudComputing.pdf" download="Cloud Computing" class="btn btn-xl2">download</a></td>
    					</tr>
    					<tr>
      						<th scope="row">4</th>
      						<td colspan="5">Human Computer Interface</td>
      						<td><a href="hci.docx" download="HCI" class="btn btn-xl2">download</a></td>
    					</tr>
  					</tbody>
				</table>
             </div>
           </div>
          <p class="pull-right"><a href="e-learning.jsp">Back to top</a></p>
        </div>
     </section>
    
    
<!-- Classroom Material Section -->
    <section id="material" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h21 class="section-heading">Classroom material</h21>
                    <h3 class="section-subheading text-muted">
                    <a href="upload.html" class="btn btn-xl2">Upload a file</a>
                    </h3>
                </div>
            </div>
            <div class="row">
            <div class="col-lg-12 text-center">
				<table class="table table-striped table-hover">
  					<thead>
    					<tr>
      						<th>#</th>
      						<td colspan="5" class="bold">File Name</td>
      						<td class="bold">Download</td>
    					</tr>
  					</thead>
  					<tbody>
    					<tr>
      						<th scope="row">1</th>
      						<td colspan="5">Crytpography and Network Security</td>
      						<td><a href="cns.docx" download="CNS" class="page-scroll btn btn-xl2">download</a></td>
      						
    					</tr>
    					<tr>
      						<th scope="row">2</th>
     						<td colspan="5">DBMS</td>
      						<td><a href="dbms.pptx" download="Database Management Systems" class="page-scroll btn btn-xl2">download</a></td>
    					</tr>
    					<tr>
      						<th scope="row">3</th>
      						<td colspan="5">SQL Tutorial</td>
      						<td><a href="SQL Tutorial.pdf" download="SQL" class="page-scroll btn btn-xl2">download</a></td>
      						
    					</tr>
  					</tbody>
				</table>
             </div>
           </div>
          <p class="pull-right"><a href="e-learning.jsp">Back to top</a></p>
        </div>
     </section>


</body>
</html>