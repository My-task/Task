<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript">
function valid()
	{
	
	var b = document.f.name.value;
	var c= document.f.cno.value;
	//var d = document.f.eid.value;
	var add=document.f.add.value;
    var e = document.f.uname.value;
	var f = document.f.pass.value;
	
			if(b=="")
		{
		alert("enter  name");
		document.f.name.focus();
		return false;
		}
        if(!isNaN(b))	
		{
		alert("enter valid name");
		document.f.name.focus();
		return false;
		}
		if(c=="")
		{
		alert("enter contact no");
		document.f.cno.focus();
		return false;
		}
		if(isNaN(c))
		{
		alert("enter valid contact no");
		document.f.cno.focus();
		return false;
		}
		if(c.charAt(0)!=9)
      {
     alert("Enter the correct mobile no");
     document.f.cno.focus();
     return false;
     }
     if(c.length!=10)
   {
   alert("Enter 10 digits");
   document.f.cno.focus();
   return false;
    }

		var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
        var m=emailfilter.test(document.f.eid.value);
        if(m==false)
       {
        alert("Please enter a valid Email Id");
	    document.f.eid.focus();
        return false;
       }
	
		if(add=="")
		{
		alert("enter address");
		document.f.add.focus();
		return false;
		}
	/*if((d.length<10)||(d.length>35))
		{
		alert("your textbox must be 10 to 35 characters");
		document.f.add.focus();
		return false;
		}*/
		if(e=="")
		{
		alert("enter desired user name"	);
		document.f.uname.focus();
		return false;
		}
		
	   if(f=="")
	   {
	  alert("enter password");
	  document.f.pass.focus();
	   return false;
	   }
	 
	}
</script>

</head>
<body>

<div id="main_container">
	<div id="header">
    	
    <div class="logo"><strong><font color="#FFFFFF"size="+2">ACTIVITY MANAGEMENT SYSTEM</font></strong></div>       
    </div>
        <div class="menu">
        	<ul>
			
        	</ul><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><blink><font size="3">Back</font></blink></font></strong></a> 
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome"><span class="red">New User Registration Form</span></div>
            <div class="welcome_box1">
            
        <p class="welcome"><div style="position:absolute; left: 125px; top: 251px;"> <form name="f" action="new_user_reg1.jsp" method="get" onsubmit="return valid()">
				<table width="425"cellpadding="5" cellspacing="5">

				  <tr> 
              <td width="139"  align="left"><font color="#33001A" size="+1">Name:</font></td>
              <td width="214"><input type="text" name="name" ></td>
            </tr>
				<tr> 
              <td align="left"><font color="#33001A" size="+1">Contact No:</font></td>
              <td><input type="text" name="cno" ></td>
            </tr>
            <tr> 
              <td align="left"><font color="#33001A" size="+1">Email Id:</font></td>
              <td><input type="text" name="eid" ></td>
            </tr>
            <tr> 
                <td align="left"><font color="#33001A" size="+1">Address:</font></td>
              <td align="left">
<textarea name="add" ></textarea></td>
            </tr>
            <tr> 
              <td align="left"> <font color="#33001A" size="+1">User Name:</font></td>
              <td><input type="text" name="uname" ></td>
            </tr>
            <tr> 
              <td align="left"><font color="#33001A" size="+1">Password:</font></td>
              <td><input type="password" name="pass" ></td>
            </tr>
            <tr>
              <td></td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr> 
              <td></td>
              <td align="center"><input type="submit" name="submit"  class="buttonc"  value="submit" /></td>
            </tr>
				</table>
				
				
				
         
</form></div></p>
      </div>
         
         
      <div class="features"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
      </div> 
         
         
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
      <div class="software_box"></div>
        
                 <div style="position:absolute;"><img src="images/reg1.jpeg"></div>        
                        
                        
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