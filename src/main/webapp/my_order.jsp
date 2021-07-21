<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript">
function validation()
        {
		
         var x = document.f.bno.value;
		     if(x=="") 
              {
               alert("enter Booking number");
               document.f.bno.focus();
               return false
             }
          if(isNaN(x))
		  {
               alert("enter valid Booking number");
               document.f.bno.focus();
               return false
             }
	 }
</script>
		</head>
<body>
<%
		   String name=(String)session.getAttribute("name");
String contact=(String)session.getAttribute("cno");
String email =(String)session.getAttribute("mail");


		   %><div id="main_container">
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
        	
      <div class="title_welcome">Booking Details</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
        <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
       
<div style="position:absolute; left: 181px; top: 277px; width: 448px; height: 207px;"><form class="form1"name="f" onsubmit="return validation()" method="post" action="my_order_check.jsp">
        
	
		
          <table  cellpadding="5" cellspacing="5">
            <tr> 
              <td ><font color="#842B00" size="+1">Name</font></td>
              <td ><font color="#FF8000"size="+1"><%=name%></font></td>
            </tr>
            <tr> 
              <td ><font color="#842B00" size="+1">Contact No</font></td>
              <td><font color="#FF8000" size="+1" ><%=contact%></font></td>
            </tr>
            <tr> 
              <td><font color="#842B00" size="+1">Email Id</font><font color="#158AFF">&nbsp;</font></td>
              <td><font color="#FF8000" size="+1"> <%=email%> </font></td>
            </tr>
            <tr> 
              <td><font color="#842B00" size="+1">Booking No</font></td>
              <td ><input type="text" name="bno" size="7" id="a2"></td>
            </tr>
			<tr>
			</tr>
            <tr>
              <td></td>
              <td align="center"> <input type="submit" value="submit" class="buttonc"></td>
            </tr>
          </table>
      </form>				
				
     </div>
	   <div style="position:absolute; left: 342px; top: 201px;"><img src="images/view1.png"></div>
        <div style="position:absolute; left: 552px; top: 232px;"><img src="images/view2.png"></div>
		</div>  
		
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div> 
    
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