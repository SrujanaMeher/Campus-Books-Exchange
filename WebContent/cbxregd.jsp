<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registration Status</title>
</head>
<body>
  <%
      String regnumq = request.getParameter("regnum");
      String unameq = request.getParameter("uname"); 
      String deptq = request.getParameter("dept");
      String uyearq = request.getParameter("uyear");
      String uconq = request.getParameter("ucon");
      String uemailq = request.getParameter("uemail");
      String upwdq = request.getParameter("upwd");
   
      try{
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
     PreparedStatement ps = con.prepareStatement("insert into CBX values(?,?,?,?,?,?,?)");
     ps.setString(1,regnumq);
     ps.setString(2,unameq);
     ps.setString(3,deptq);
     ps.setString(4,uyearq);
     ps.setString(5,uconq);
     ps.setString(6,uemailq);
     ps.setString(7,upwdq);
    	 
         int count = ps.executeUpdate();
     
         
         if(count == 1){
        	 out.println("<div class='panel panel-info'><div class='panel-heading'>Your Registration status is: Succesful </div><div class='panel-body'>Click here to Login : <a href='cbxsignin.html'>Login</a></div></div>");
         }
         else
        	 out.println("<div class='panel panel-info'><div class='panel-heading'>Your Registration status is: UN-Succesful :/ </div><div class='panel-body'>Click here to Register again : <a href='cbxreg.html'>Register</a></div></div>"); 
         
      
     }
      
       catch (Exception e) {
    	   out.println(e.getMessage());
       }
   
      finally{
    	   out.println("Thank You for registering for CBX"); 
      }
   
   
   
   
   
   
   
   %>






</body>
</html>