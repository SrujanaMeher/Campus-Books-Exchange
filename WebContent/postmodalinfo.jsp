<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Information of Book Owner</title>
	 
	 <link rel="icon" href="images/viit.jpg"/>
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
     <link href="styles.css" rel="stylesheet"/>

<script type="text/javascript">
	$(document).onClick(function(){
		$("#myModal").modal('show');
	});
</script>

</head>
<body>
<div class="bs-example">
    <!-- Button HTML (to Trigger Modal) -->
   <a href='#myModal' class='btn btn-lg btn-primary btn1' data-toggle='modal'>Launch Demo Modal</a> <div id='myModal' class='modal fade'><div class='modal-dialog'><div class='modal-content'><div class='modal-header'><button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button><h4 class='modal-title'>Confirmation</h4></div><div class='modal-body'><p>Do you want to save changes you made to document before closing?</p><p class='text-warning'><small>If you don't save, your changes will be lost.</small></p></div><div class='modal-footer'><button type='button' class='btn btn-primary' data-dismiss='modal'>Close</button><button type='button' class='btn btn-primary'>Save changes</button></div></div></div></div>

</div>

<!-- <div class='container'>
<div class='row'>
<div class='col-md-5  toppad  pull-right col-md-offset-3'>
<a href='#'>Edit Profile</a>
</div><br></br>
<div class='col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad'>
<div class='panel panel-info'><div class='panel-heading'>
<h3 class='panel-title'>" + rs2.getString(2) + "</h3></div><div class='panel-body'>
<div class='row'><div class='col-xs-10 col-sm-10 hidden-md hidden-lg'><br><dl><dt>
DEPARTMENT:</dt><dd>" + rs2.getString(3) + "</dd><dt>YEAR:</dt><dd>" + rs2.getString(4) + "</dd>
<dt>CONTACT NUMBER:</dt><dd>" + rs2.getString(5) + "</dd><dt>E-MAIL ID:</dt><dd>" + rs2.getString(6) + "</dd>
</dl></div><div class='col-md-9 col-lg-9'><table class='table table-user-information'><tbody><tr><td>
REGISTRATION ID:</td><td>"+ rs2.getString(1) +"</td></tr><tr><td>DEPARTMENT:</td><td>" + rs2.getString(3) + "</td>
</tr><tr><td>YEAR:</td><td>" + rs2.getString(4) + "</td></tr><tr><td>CONTACT NUMBER:</td><td>" + rs2.getString(5) + "</td>
</tr><tr><td>E-MAIL ID:</td><td><a href=' "+ rs2.getString(6) + "'>" + rs2.getString(6) + "</a></td></tr></tbody></table>
</div></div></div><div class='panel-footer'>
<a href='#' data-original-title='Edit profile' data-toggle='tooltip' type='button' class='btn btn-sm btn-warning'>
<i class='glyphicon glyphicon-edit'></i></a></div></div></div></div></div>
     -->
     
     
    <div class='container'>
    <table class='table table-user-information'><tbody><tr><td>NAME:</td><td>" + rs3.getString(2) + "</td></tr>
    <tr><td>
REGISTRATION ID:</td><td>"+ rs3.getString(1) +"</td></tr><tr><td>DEPARTMENT:</td><td>" + rs3.getString(3) + "</td>
</tr><tr><td>YEAR:</td><td>" + rs3.getString(4) + "</td></tr><tr><td>CONTACT NUMBER:</td><td>" + rs3.getString(5) + "</td>
</tr><tr><td>E-MAIL ID:</td><td><a href=' "+ rs3.getString(6) + "'>" + rs3.getString(6) + "</a></td></tr></tbody></table>
    </div>





</body>
</html>   
