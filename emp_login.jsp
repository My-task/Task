<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />

</head>
<body>
<% String name =(String)session.getAttribute("empname"); %>
<div id="main_container">
	<div id="header">
    	
    <div class="logo"><strong><font color="#FFFFFF" size="+2">ACTIVITY MANAGEMENT SYSTEM</font></strong></div>       
    </div>
        <div class="menu">
        	<ul>
			
        	</ul>
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome"><span class="red">Welcome:</span>&nbsp;&nbsp;<%=name%> </div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
         
                  
       <a href="emp_work_detail.jsp"> 
      <div style="position:absolute; left: 239px; top: 296px; width: 250px; height: 19px;" class="fc1"><img src="images/right.png" width="25" height="25"><font color="#47478F" size="+1">&nbsp;&nbsp;&nbsp;View 
        work Details</font></div>
      </a>      
        <a href="index.html"> 
      <div style="position:absolute; left: 243px; top: 353px; width: 250px; height: 19px;" class="fc1"><img src="images/right.png" width="25" height="25"><font color="#47478F" size="+1">&nbsp;&nbsp;&nbsp;Logout</font></div>
      </a> 
	  <div style="position:absolute; left: 448px; top: 276px; width: 234px; height: 145px;"><img src="images/emp.png" /></div>
      <div class="features"><br /><br /><br /><br /><br /><br /><br /><br /><br />
      </div> 
         
         
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
      <div class="software_box"></div>
        
                         
                        
                        
      <div class="testimonials"> </div>
        

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