<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<html>
<head>
<title>event planner</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String a= request.getParameter("name");
//System.out.println(a);
String b =request.getParameter("pass");
//System.out.println(b);
String c =request.getParameter("et");
//System.out.println(c);


ResultSet rs=null;
String emptype=null;

String empname=null;
String d="Admin";
String e="Employee";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();
	
	String qry="select * from employee_detail where username='"+a+"' && password='"+b+"' && employeetype='"+c+"'";
		rs =st.executeQuery(qry);
		
	
	
	while(rs.next())
	{
	emptype=rs.getString("employeetype");
	empname=rs.getString("fullname");	
	 }
	 session.setAttribute("empname",empname);
	if(d.equals(emptype))
	{
		response.sendRedirect("admin_login.jsp?message=success");
	}
	else if(e.equals(emptype))
	{
	response.sendRedirect("emp_login.jsp?message=success");
	}
	else
	{
	out.println("You are not authorised person to login");
	}
	
	}
	
     	
	catch(Exception e2){
		out.println(e2.getMessage());
	}

%>

</body>
</html>
