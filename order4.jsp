<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript">
	function  valid()
{
if(document.f.food[0].checked==false&&document.f.food[1].checked==false&&document.f.food[2].checked==false)
{
alert("Select a Food Type");
return false;
}
var c=document.f.total.value;
if(c=="")
{
alert("Enter Total Number of Guest");
document.f.total.focus();
return false;
}
if(isNaN(c))
{
alert("Enter Number");
document.f.total.focus();
return false;
}
}
	</script>
		</head>
<body>
<%
String hall=request.getQueryString();
//System.out.println(hall);
session.setAttribute("hall",hall);
String sname=(String)session.getAttribute("sname");
String stype=(String)session.getAttribute("stype");

String name=(String)session.getAttribute("name");
String cno=(String)session.getAttribute("cno");
String mail=(String)session.getAttribute("mail");
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
        	
      <div class="title_welcome">Order Booking</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
         
   	<div style="position:absolute; width: 153px; height: 107px; left: 576px; top: 212px;"><img src="images/music.png" height="150"></div>
				<div style="position:absolute; width: 153px; height: 107px; left: 602px; top: 384px;"><img src="images/dance.png" height="150"></div>
 
      <div class="features"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
      </div> 
         
         
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> <div style="position:absolute; left: 148px; top: 283px; width: 463px; height: 285px;">
				<form name="f" action="order5.jsp" method="get" onsubmit="return valid()">
				<table width="458" height="254" cellpadding="5" cellspacing="5">

				<tr>
				<td width="153" ><font color="#822B00" size="3"><strong>Name:</strong></font></td>
				<td width="198"><input type="text" name="name" disabled value="<%=name%>"></td>
				</tr>
				<tr>
				<td ><font color="#822B00" size="3"><strong>Contact 
                  No:</strong></font></td>
				<td><input type="text" name="cno" disabled value="<%=cno%>"></td>
				</tr>
				<tr>
				<td ><font color="#822B00" size="3"><strong>Email 
                  Id:</strong></font></td>
				<td><input type="text" name="eid" disabled value="<%=mail%>" ></td>
				</tr>
				 <tr>
          <td  align="left"><font color="#822B00" size="+1">Product Name:</font></td>
	        <td><input type="text" name="sname" disabled value="<%=sname%>"></td>
              </tr>			
    
            <tr>
          <td  align="left"><font color="#822B00" size="+1">Product type:</font></td>
	        <td><input type="text" name="stype" disabled value="<%=stype%>"></td>
              </tr>	
				
			<tr>
				<td ><font color="#822B00" size="3"><strong>Hall 
                  Decoration:</strong></font></td>
				<td ><input type="text" name="hall" disabled value="<%=hall%>" ></td>
               </tr>
			   <tr>
<td width="153"  align="left"><font color="#822B00" size="+1">Select Food Type:</font></td>
<td ><input type="radio" name="food" value="veg">
                <font color="#482400" size="+1">Veg</font>&nbsp;&nbsp; 
                <input type="radio" name="food" value="nonveg">&nbsp;&nbsp;<font color="#482400" size="+1">Non-Veg</font>&nbsp;&nbsp;<input type="radio" name="food" value="both">&nbsp;&nbsp;<font color="#482400" size="+1">Both</font></td>
</tr>
<tr>
<td width="153"  align="left"><font color="#822B00" size="+1">Total Guests:</font></td>
<td><input type="text" name="total" ></td>
</tr>

<tr><td></td><td><input type="submit" name="s" value="submit" class="buttonc"></td></tr>


	
				</table>
				
				
				
         
</form>
   
            </div>
        
      </div>
        

        </div>  
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /></div> 
    
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