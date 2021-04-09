<%@ page language="java" import="java.util.*,java.sql.*,java.io.*" pageEncoding="ISO-8859-1"%>
<%

String filenameq = request.getParameter("filename");
String fdataq = request.getParameter("fdata");
String fcategoryq = request.getParameter("fcategory");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%

try{
	Connection con = null;
	PreparedStatement ps = null;
     Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
  
     ps = con.prepareStatement("INSERT INTO ELEARN VALUES(?,?,?,?)");
File file = new File("D:/info.pdf");
FileInputStream fs = new FileInputStream(file);

ps.setInt(1,4);

ps.setBinaryStream(2,fs,fs.available());
int i = ps.executeUpdate();
if(i!=0){
out.println("<h2>PDF inserted successfully");
}
else{
out.println("<h2>Problem in image insertion");
} 


} 

catch(Exception e){
out.println("<h2>Failed Due To "+e);
}
%>