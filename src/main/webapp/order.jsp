<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript">
function valid()
{
alert("Select Desired Area");
}
	function fun(){
	
	var x = document.f.area.options[document.f.area.selectedIndex].value;
	if(x==0)
	{
	alert("select Desired Area");
	document.f.area.focus();
	return false;
	}
	else
	{
	window.location="http://localhost:8080/activity_management/order1.jsp?"+x;
	}
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="user_login1.jsp" ><strong><font color="#FFFFFF"><font size="3">Home</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="user_login1.jsp" ><strong><font color="#FFFFFF"><font size="3">Back</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><font size="3">Logout</font></font></strong></a> 
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Check Hall Availability</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
         
                  
      
   
      <div class="features"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
      </div> 
         
         
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        <div class="testimonials">
                       
                            
    <div style="position:absolute; left: 193px; top: 280px; width: 279px; height: 154px;">   
          
				<form name="f" action="#" method="get" onsubmit="return valid()">
				

				<table width="280" cellpadding="5" cellspacing="5">
				
				<tr>
				  <td width="122" ><font color="#822B00" size="3" ><strong>Select Area:</strong></font></td>
				<td width="121" ><select name="area" onchange="fun()"><option value="0">--select--</option>
                                                                      <option>Koyembedu</option>
                                                                       <option>Tambaram</option>
                                                                         <option>Parris</option>
                                                                           <option>Poonthamale</option>
		                                                                  </select> 
</td>
</tr>
</table>
				
				
				</form>
				<form name="f2" action="#" method="get" onsubmit="return valid()">
				
				<table width="280" cellpadding="5"  cellspacing="5">
				<tr>

                  <td width="125"><font color="#822B00" size="3"><strong>Hall Name:</strong></font></td>
<td width="118" ><select name="hall"><option value="0">--select--</option></select>

                                                                     
</tr>
<tr>
                  <td ><font color="#822B00" size="3"><strong>Current Date:</strong></font></td>
<td><input type="text" name="area" size="13" disabled value="<%=strDateNew1%>"></td>
</tr>
<tr>
                  <td><font color="#822B00" size="3"><strong>Event Date:</strong></font></td>
<td ><input type="text" size="13" name="wdate"></td>
</tr>
<tr>
<td></td><td><input type="submit" name="s" value="submit"  class="buttonc"></td>
</tr>

</table>
				
				
				</form></div>
				<div style="position:absolute; width: 153px; height: 107px; left: 536px; top: 211px;"><img src="images/music.png" height="150"></div>
				<div style="position:absolute; width: 153px; height: 107px; left: 566px; top: 361px;"><img src="images/dance.png" height="150"></div>
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