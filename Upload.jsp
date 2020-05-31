<%@page import="com.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
	alert("Please upload file");
	formObj.t1.focus();
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
	        <li><a href="UserScreen.jsp">Home</a></li>
            <li class="active"><a href="Upload.jsp">Upload File</a></li>
            <li><a href="ViewShare.jsp">Download File</a></li>
			<li><a href="UserRevocation.jsp">Revoke users</a></li>
            <li><a href="Graph.jsp">Overhead Graph</a></li>
            <li><a href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
       <h2 style="font-size:18Px;text-align:center;color:red;"><b>Upload File</b></h2>
       <table class="hbg" width="100%" height="100%">
	   <tr>
	   <td> <div style="text-align:center;"><img src="images/orange.jpg" alt="" /></div> </td>
	   <td>
      				<center>
<form name="f1" method="post" action="Upload" enctype="multipart/form-data" onsubmit="return validate(this);"><br/>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						<table align="center" width="40" >
			 <tr><td><font size="2"><b>Upload&nbsp;File:</b></font></td><td><input type="file" name="t1" style="font-family: Comic Sans MS" size=30/></td></tr>
         
		  <tr><td align="left"><font size="2">Share&nbsp;With:</font></td>
		<td>&nbsp;<select name="t2" multiple>
		<%
	String owner = session.getAttribute("user").toString();
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select username from users where username !='"+owner+"'");
	while(rs.next()){
		String user = rs.getString(1);
		%>
		<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
		<%}%>
		</select>
		</td>
		</tr>
			<tr><td></td><td><input type="submit" value="Upload"></td>
			</table>
			</td> </tr> </table>
				</div>	
					
				</div>
				
	</body>
</html>