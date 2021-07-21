<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<html>
<head>
<title>activity management</title>

</head>

<body>
<%
 String name=(String)session.getAttribute("name");
  String cno=(String)session.getAttribute("cno");
   String eid=(String)session.getAttribute("mail");
    String area=(String)session.getAttribute("area");
	    String hallname=(String)session.getAttribute("halls");
	String date=(String)session.getAttribute("date");
	String hall=(String)session.getAttribute("hall");
String sname=(String)session.getAttribute("sname");
String stype=(String)session.getAttribute("stype");
	 String food=(String)session.getAttribute("food");	    

	String total=(String)session.getAttribute("total");
	
	String sta="process going on";
	 
	   
	  String bill=request.getQueryString();
	  String event="stageshow";
	  

 ResultSet rs = null;
 
 try
    {
	 Connection con1 = databasecon.getconnection();
	PreparedStatement ps1=con1.prepareStatement("insert into booking(name,contact,email,event,date,area,hallname,sname,stype,dec_name,food,total,bill,status) values('"+name+"','"+cno+"','"+eid+"','"+event+"','"+date+"','"+area+"','"+hallname+"','"+sname+"','"+stype+"','"+hall+"','"+food+"','"+total+"','"+bill+"','"+sta+"')");
    
	ps1.executeUpdate();
	response.sendRedirect("stage_book1.jsp?message=success");
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}
 
 
 %>

</body>
</html>
