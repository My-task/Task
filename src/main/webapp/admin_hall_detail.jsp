<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
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
        	
      <div class="title_welcome">Hall Details</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
        <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
	  		<div style="position:absolute; left: 149px; top: 268px; width: 729px; height: 117px;" ><form   name="ff" method="get" action="hall_insert.jsp" onSubmit="return valid()">
             <table width="724"  border="1">    
              <tr bgcolor="#FFCEB7"> 
                       <td colspan="4" align="center"><font color="#000046" size="+1"><strong>Add New Hall</strong></font></td>
                </tr>
                  <tr bgcolor="#FFE1FF"> 
	   
              <td width="179" align="center" ><font color="#110022" ><strong><font size="2">Area</font></strong></font></td>      
              <td width="204" align="center"><font color="#110022" ><strong><font size="2">Hall 
                Name</font></strong></font></td>
              <td align="center" width="179"><font  color="#110022"><strong><font size="2">Hall 
                Rate</font></strong></font></td>        
              <td align="center" width="134"><font  color="#110022"><strong><font size="2">Add</font></strong></font></td>
      
       </tr>
	

    <tr  bgcolor="#C1E0FF">
         
        <td align="center"><select name="area"><option value="0">--select--</option><option>Koyembedu</option><option>Parris</option><option>Poonthamale</option><option>Tambaram</option></select></td>
		<td align="center"><input type="text" size="10" name="hname" ></td>
		<td align="center"><input type="text" size="10" name="hrate" ></td>
		
		<td align="center"><input type="submit"  name="s" value="ADD" class="buttonc"></td>
    </tr>
	
</table>
</form>
</div>	
				<div style="position:absolute; left: 148px; top: 389px; width:725px; height:325px" class="sd">
    <form action="#" name="f1" method="post" >
        <table align="center" width="914" height="95" border="1" cellpadding="0" cellspacing="0">
          <tr bgcolor="#FFE1FF"> 
              <th width="182" height="52"><font color="#FF0000"><strong><font size="2">Area</font></strong></font></th>
              <th width="230"> <font color="#FF00000"><strong><font size="2">Hall 
                Name</font></strong></font></th>
				<th width="248"> <font color="#FF00000"><strong><font size="2">Hall 
                Rate</font></strong></font></th>
             
              <th width="244"> <font color="#FF0000"><strong><font size="2">Delete
               </font></strong></font></th>
          </tr>
          <%
  Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;

  String a = null,b = null,c=null;
  
  
	try
		{
		
        con = databasecon.getconnection();  
       // st = con.createStatement();
		st = con.prepareStatement("select * from area order by area");
		rs = st.executeQuery();
		while(rs.next())
       	{
		 a=rs.getString("area");
	     b=rs.getString("hallname");
		   c=rs.getString("hallrate");
		 
		  
	%>
          <tr bgcolor="#C1E0FF"> 
              <td height="41">
			   <strong><font size="2"> <%=a%></font></strong> 
                </td>
              <td>
			   <strong><font size="2"><%=b%></font></strong> 
			   </td>
              <td> 
			  <strong><font size="2"> <%=c%></font></strong> 
              </td>
			  			  <td><strong><font size="2"><a href="delete_hall.jsp?<%=b%>">Delete</a></font></strong></td>

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
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div> 
    
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
    