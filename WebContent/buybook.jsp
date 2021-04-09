<!DOCTYPE html>
<!--[if lt IE 7 ]>
 <html class="ie6" lang="en-US"> <![endif]--><!--[if IE 7 ]> 
<html class="ie7" lang="en-US"> <![endif]--><!--[if IE 8 ]>
 <html class="ie8" lang="en-US"> <![endif]--><!--[if IE 9 ]>
 <html class="ie9" lang="en-US"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--> 
<html class="" lang="en-US"> <!--<![endif]-->

<head>

	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="CBX Home Page">
    <meta name="author" content="Srujana Meher">

<title>CBX</title>
	 <link rel="icon" href="images/viit.jpg">
	 <script src="jquery.js"></script>
     <script src="bootstrap/js/bootstrap.min.js"></script>
     <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
     <link href="styles.css" rel="stylesheet">
    
<script>
$(document).ready(function() {
    var panels = $('.user-infos');
    var panelsButton = $('.dropdown-user');
    panels.hide();

    //Click dropdown
    panelsButton.click(function() {
        //get data-for attribute
        var dataFor = $(this).attr('data-for');
        var idFor = $(dataFor);

        //current button
        var currentButton = $(this);
        idFor.slideToggle(400, function() {
            //Completed slidetoggle
            if(idFor.is(':visible'))
            {
                currentButton.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>');
            }
            else
            {
                currentButton.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
            }
        })
    });


    $('[data-toggle="tooltip"]').tooltip();

    $('button').click(function(e) {
        e.preventDefault();
        alert("This is a demo.\n :-)");
    });
});

$(document).onClick(function(){
	$("#myModal").modal('show');
});

</script>
     
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
        <li class="active"><a href="cbxmain.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-book"></span> E-Learning</a>
        	<ul class="dropdown-menu" aria-labelledby="dropdownMenu4">
        	<li><a href="#">E-text books</a></li>
 			<li><a href="#">PDf's</a></li>
  			<li><a href="#">Materials</a></li>
			</ul>
        </li>
        <li><a href="cbxmain.html"><span class="glyphicon glyphicon-comment"></span> Forums</a></li>
        <li><a href="cbxpost.html"><span class="glyphicon glyphicon-shopping-cart"></span> Post An Add</a></li>
      </ul>
   	  <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
        
      </ul>
    </div>
  </div>
</nav>
<!-- end of navigation -->


<ol class="breadcrumb bc">
	<form class="navbar-form" role="search" action="postmodalinfo.jsp">
  		<div class="form-group right">
  		Welcome : "id should be displayed"
    	<input type="text" class="glyphicon glyphicon-search form-control" placeholder="Search">
  		</div>
  			<a href="#myModal" class="btn btn-lg btn-primary btn1" data-toggle="modal">Post ad</a>
  			<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Owner Information</h4>
            </div>
            <div class="modal-body">
                <p>Do you want to save changes you made to document before closing?</p>
                <p class="text-warning"><small>If you don't save, your changes will be lost.</small></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
	</form>
</ol><br><br>

<div class="container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
           <A href="edit.html" >Edit Profile</A>

   
       <br>

      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   		  <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">Sheena Kristin A.Eschor</h3>
            </div>
            <div class="panel-body">
              <div class="row" >
                <div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                  <dl>
                    <dt>DEPARTMENT:</dt>
                    <dd>Administrator</dd>
                    <dt>YEAR:</dt>
              		<dd>11/12/2013</dd>
                    <dt>CONTACT NUMBER:</dt>
                       <dd>11/12/2013</dd>
                    <dt>E-MAIL ID:</dt>
                    <dd>Male</dd>
                  </dl>
                </div>
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                    <tr>
                        <td>REGISTRATION ID:</td>
                        <td>Programming</td>
                      </tr>
                      <tr>
                        <td>DEPARTMENT:</td>
                        <td>Programming</td>
                      </tr>
                      <tr>
                        <td>YEAR:</td>
                        <td>06/23/2013</td>
                      </tr>
                      <tr>
                        <td>CONTACT NUMBER:</td>
                        <td>01/24/1988</td>
                      </tr>
                
                      <tr>
                        <td>E-MAIL ID:</td>
                        <td><a href="mailto:info@support.com">info@support.com</a></td>
                      </tr>
                 
                    </tbody>
                  </table>
                  </div>
              </div>
            </div>
                 <div class="panel-footer">
                  <a href="#" data-original-title="Edit profile" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                 </div>
            
          </div>
        </div>
      </div>
    </div>


</body>
</html>