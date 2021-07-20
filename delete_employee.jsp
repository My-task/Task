<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>
<html>
<head>
<title>event planner</title>
</head>

<body>
<%
String a=request.getQueryString();
//System.out.println(reqno);

try
    {
	 Connection con = databasecon.getconnection();
	PreparedStatement ps=con.prepareStatement("delete from employee_detail  where id='"+a+"'");
    
	ps.executeUpdate();
	response.sendRedirect("emp_detail.jsp?message=success");
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}

%>
</body>
</html>
