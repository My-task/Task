<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>
<html>
<head>
<title>activity_management</title>
</head>
<body>
<%
String uname=request.getParameter("name");
//System.out.println(uname);
//session.setAttribute("uname",uname);
String pass=request.getParameter("pass");
//session.setAttribute("pass",pass);


ResultSet rs=null;
String name=null,cno=null,mail=null;

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();
	
	String qry="select * from new_user_reg where uname='"+uname+"' && pass='"+pass+"'";
		rs =st.executeQuery(qry);
	
	if(rs.next())
	{	
	 try
{
	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	
	String qry1="select * from new_user_reg where uname='"+uname+"' && pass='"+pass+"'";
		ResultSet rs1 =st1.executeQuery(qry1);
	while(rs1.next())
	{
	name=rs1.getString("name");
	cno=rs1.getString("contact");
	mail=rs1.getString("email");	
	}
	session.setAttribute("name",name);
	session.setAttribute("cno",cno);
 session.setAttribute("mail",mail);

		response.sendRedirect("user_login1.jsp?message=success");
		}
	
     	
	catch(Exception e2){
		out.println(e2.getMessage());
	}

	}
	else
	{
out.println("Enter Coreect Username & Password");
	}
	}
	
     	
	catch(Exception e2){
		out.println(e2.getMessage());
	}

%>
</body>
</html>
