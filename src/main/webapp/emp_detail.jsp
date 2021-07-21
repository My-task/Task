<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>event planner</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<script type="text/javascript">
	function valid()
	{
	var a =document.ff.area.selectedIndex;
	if(a==0)
	{
	alert("Enter Area");
	document.ff.area.focus();
	return false;
	}
	var b =document.ff.hname.value;
	if(b=="")
	{
	alert("Enter Hall Name");
	document.ff.hname.focus();
	return false;
	}
	var c =document.ff.hrate.value;
	if(c=="")
	{
	alert("Enter Hall Rate");
	document.ff.hrate.focus();
	return false;
	}
	if(isNaN(c))
	{
	alert("Enter Rate in Number");
	document.ff.hrate.focus();
	return false;
	}
	}
	
	
	
	</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />

		</head>
<body>
<%
String bno=request.getParameter("bno");
%>
		   <div id="main_container">
	<div id="header">
    	
    <div class="logo"><strong><font color="#FFFFFF" size="+2">ACTIVITY MANAGEMENT SYSTEM</font></strong></div>       
    </div>
        <div class="menu">
        	<ul>
			
        	</ul><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="admin_login.jsp" ><strong><font color="#FFFFFF"><font size="3">Home</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="admin_login.jsp" ><strong><font color="#FFFFFF"><font size="3">Back</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><font size="3">Logout</font></font></strong></a> 
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Employee Details</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
        <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
	  	<div style="position:absolute; left: 142px; top: 275px; width: 725px; height: 200px;" class="sd">
		   
    <form action="#" name="f1" method="post" onsubmit="return val();">
        <table align="center" width="914" height="102"  border="1"  cellpadding="5" cellspacing="5">
          <tr bgcolor="#C5C5E2"> 
            <th height="40"><font color="#FF0000" size="2">Reg_Id</font></th>
            <th width="100"> <font color="#FF00000" size="2">FullName</font></th>
            <th width="100"> <font color="#FF0000" size="2">Age</font></th>
            <th width="100"> <font color="#FF0000" size="2">Address</font></th>
            <th width="100"> <font color="#FF0000" size="2">Pin</font></th>
            <th width="100"> <font color="#FF0000" size="2">Salary</font></th>
            <th width="100"> <font color="#FF0000" size="2">Mobile</font></th>
            <th width="100"> <font color="#FF0000" size="2">Mailid</font></th>
            <th width="100"> <font color="#FF0000" size="2">EmpType</font></th>
            <th width="100"> <font color="#FF0000" size="2">Username</font></th>
            <th width="100"> <font color="#FF0000" size="2">Password</font></th>
            <th width="100"> <font color="#FF0000" size="2">Update</font></th>
          </tr>
          <%
  Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;
  int a=0;
  String b = null,c = null,d=null,g=null,h=null,i=null,j=null,k=null,l=null,m=null;
  
  
	try
		{
		
        con = databasecon.getconnection();  
       // st = con.createStatement();
		st = con.prepareStatement("select * from employee_detail");
		rs = st.executeQuery();
		while(rs.next())
       	{
	   
	    
		   a=rs.getInt("id");
		   b=rs.getString("fullname");
		   c=rs.getString("age");
		   d=rs.getString("address");
		   g=rs.getString("pincode");
		   h=rs.getString("salary");
		   i=rs.getString("mobile");
		   j=rs.getString("mail");
		   k=rs.getString("employeetype");
		   l=rs.getString("username");
		   m=rs.getString("password");
	%>
          <tr bgcolor="#E9E9F3"> 
              <td> <font size="2"><strong> <%=a%></strong>
                </font> </td>
              <td> <font size="2"><strong> <%=b%></strong>
                </font> </td>
              <td> <font size="2"><strong><%=c%></strong>
                  </font> </td>
              <td> <font size="2"><strong>  <%=d%></strong>
              
                </font> </td>
              <td> <font size="2"><strong><%=g%></strong>
                
                </font> </td>
              <td> <font size="2"><strong> <%=h%></strong> 
               
                </font> </td>
              <td> <font size="2"> <strong> <%=i%></strong>
           
                </font> </td>
              <td> <strong><font size="2"> <%=j%></font></strong> 
               
              </td>
              <td> <strong><font size="2"><%=k%></font></strong> 
                
              </td>
              <td> <strong><font size="2"> <%=l%></font></strong> 
               
              </td>
              <td> <strong><font size="2"><%=m%></font></strong> 
                
              </td>
            <%
      


%>
            <td> <a href="delete_employee.jsp?<%=a%>"><font color="#FF00FF">Delete</font></a></td>
          </tr>
          <%
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    %>
        </table>
		</form>
    </div>	
    </div>  
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div> 
    
    </div>    

    
    <div id="footer">                                              
        
    <div class="left_footer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><font color="#FFFFFF" size="3"><strong>Chennaisunday Systems Pvt Ltd.&nbsp;&nbsp;Phone:&nbsp;9566137117</strong></font></a></div>
        
    <div class="right_footer"> </div>   
    
    </div>
    
    
    
</div>
<!-- end of main_container -->

</body>
</html>		
    