<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<html>
<head>
<title>activity management</title>

</head>

<body>
<%

 String name=request.getParameter("name");
 String cno=request.getParameter("cno");
 String eid=request.getParameter("eid");
 String add=request.getParameter("add");
 String uname=request.getParameter("uname");
 String pass=request.getParameter("pass");
 String a=null;
 ResultSet rs = null;
 
 try
    {
	 Connection con1 = databasecon.getconnection();
	PreparedStatement ps1=con1.prepareStatement("insert into new_user_reg(name,contact,email,address,uname,pass) values('"+name+"','"+cno+"','"+eid+"','"+add+"','"+uname+"','"+pass+"')");
    
	ps1.executeUpdate();
	response.sendRedirect("index.html?message=success");
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}
 
 
 %>

</body>
</html>
