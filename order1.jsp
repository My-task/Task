<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript">

	function fun(){
	

	if(document.f.hallname.selectedIndex==0)
	{
	alert("select Hall Name");
	document.f.hallname.focus();
	return false;
	}
	
var a=document.f.ed.value;
//var reDate = /(?:19|20\d{2})\-(?:0[1-9]|1[0-2])\-(?:0[1-9]|[12][0-9]|3[01])/;
var reDate = /(?:0[1-9]|[12][0-9]|3[01])\/(?:0[1-9]|1[0-2])\/(?:19|20\d{2})/;
 var a= reDate.test(a);
if(a==false)
{
alert("Enter Date in the format of dd/mm/yyyy");
document.f.ed.focus();
return false;
}
/*var b=document.f.ct.value;
      Date a1 =formater.parse(a); 
      Date b1= formater.parse(b); 
	  if(b1<=a1)
	  {
	  alert("ou can book 3days before");
	  document.f.bdate.focus();
	  return false;
	  }*/
	  

	}
</script>
</head>
<body>
<%
java.util.Date now = new java.util.Date();
String date=now.toString();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now) ; 
	 
%>
<div id="main_container">
	<div id="header">
    	
    <div class="logo"><strong><font color="#FFFFFF" size="+2">ACTIVITY MANAGEMENT SYSTEM</font></strong></div>       
    </div>
        <div class="menu">
        	<ul>
			
        	</ul><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="user_login1.jsp" ><strong><font color="#FFFFFF"><font size="3">Home</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="order.jsp" ><strong><font color="#FFFFFF"><font size="3">Back</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><font size="3">Logout</font></font></strong></a> 
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Check Hall Availability</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
         
                  
      	<div style="position:absolute; width: 153px; height: 107px; left: 558px; top: 305px;"><img src="images/music1.png" height="150"></div>
 
      <div class="features"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
      </div> 
         
         
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        <div class="testimonials">
                       
                            
    <div style="position:absolute; left: 193px; top: 280px; width: 279px; height: 154px;">   
          <%
				
				String area = request.getQueryString();
				session.setAttribute("area",area);
			String hallname=null;

ResultSet rs=null;
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
	

	String qry="select * from area where area='"+area+"'";
		rs =st.executeQuery(qry);
	
	
%>

				<form name="f"  method="get" onsubmit="return fun()" action="date_checks.jsp">
				
				<table cellpadding="5"  cellspacing="5">
				<tr>
				  <td ><font color="#822B00" size="3" ><strong>Select Area:</strong></font></td>
				<td ><input type="text" name="area" disabled value="<%=area%>">
</td>
</tr>
				<tr>

                  <td><font color="#822B00" size="3"><strong>Hall Name:</strong></font></td>
<td ><select name="hallname" >
<option value="0">--select--</option>
				
<%	
		while(rs.next())
	  {
	    hallname=rs.getString("hallname");
		
	%>
		
		<option ><%=hallname%></option>
		<%
		}
		%>
		</select>
		<%
	
	}
	catch(Exception e1)
	{out.println(e1.getMessage());}
	%>
                                                                     
</tr>
<tr>
                  <td ><font color="#822B00" size="3"><strong>Current Date:</strong></font></td>
<td><input type="text" name="cd" disabled value="<%=strDateNew1%>"></td>
</tr>
<tr>
                  <td><font color="#822B00" size="3"><strong>Show Date:</strong></font></td>
<td ><input type="text" name="ed"></td>
</tr>
<tr>
<td></td><td><input type="submit" name="s" value="submit"  class="buttonc"></td>
</tr>

</table>
				
				
				</form></div>
      </div>
        

        </div>  
        
        <div class="clear"></div> 
    
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