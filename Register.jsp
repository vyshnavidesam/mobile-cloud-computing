<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter Username");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter Email");
	formObj.t3.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t4.focus();
	return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Address");
	formObj.t5.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
</head>
<body>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1 style="font-size:30Px;text-align:center;"><span>A Lightweight Secure Data Sharing Scheme for Mobile Cloud Computing  </span><small></small></h1>
      </div>
    </div>
    <div class="content">
      <div class="content_bg">
        <div class="menu_nav">
         <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="Login.jsp">Login</a></li>
            <li class="active"><a href="Register.jsp">Register</a></li>
            
          </ul>
        </div>
		<h2 style="font-size:18Px;text-align:center;color:red;"><b>User Registration Page</b></h2>
      <table class="hbg" width="100%" height="100%"> 
	  <tr>
 <td>  <center>
<form name="f1" method="post" action="Register" onsubmit="return validate(this);"><br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="50%" >
			 <tr><td style="color:black;"><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size=30/></td></tr>
         
		  <tr><td style="color:black;"><b>Password</b></td><td><input type="password" name="t2" style="font-family: Comic Sans MS" size=10/></td></tr>

		   <tr><td style="color:black;"><b>Email</b></td><td><input type="email" name="t3" style="font-family: Comic Sans MS" size=20/></td></tr>

		    <tr><td style="color:black;"><b>Contact&nbsp;No</b></td><td><input type="text" name="t4" style="font-family: Comic Sans MS" size=10/></td></tr>

			 <tr><td style="color:black;"><b>Address</b></td><td><textarea name="t5" style="font-family: Comic Sans MS" rows="6" cols="28"></textarea></td></tr>
         
			<tr><td></td><td><input type="submit" value="Register"></td>
			</table>
				</td>
			 <td> <div style="text-align:center;"><img src="images/register.jpg" alt=""></div> </td>
			</tr>
			</table>
				</div>	
				</div>	
	</body>
</html>