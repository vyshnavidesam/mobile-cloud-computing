<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1 style="font-size:30Px;text-align:center;"><span>A Lightweight Secure Data Sharing Scheme for Mobile Cloud Computing </span><small></small></h1>
      </div>
    </div>
    <div class="content">
      <div class="content_bg">
        <div class="menu_nav">
          <ul>
            <li><a href="UserScreen.jsp">Home</a></li>
			<li><a href="Upload.jsp">Upload File</a></li>
            <li><a href="ViewShare.jsp">Download File</a></li>
			<li class="active"><a href="Revocation.jsp">Revoke users</a></li>
            <li><a href="Graph.jsp">Overhead Graph</a></li>
            <li><a href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
        
		<br/>
		<center><h2><font color="red";><b><center>Revocation Screen<center></b></font></h2>
		<h3><font size="5" color="black";><%if(request.getParameter("t1") != null)%>
	<%=request.getParameter("t1")%>!
	</center>
	<%
			
	String res = request.getParameter("t1");
	if(res != null){
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		
		out.println("<center><font size=3 color=red>"+res+"</font></center>");
	}%>
	<form name="f1" method="post" action="UserRevocation.jsp" onsubmit="return validate(this);"><br/>
	
	
			<br/>

<table align="center" width="40" >
			 <tr><td><b>File&nbsp;Name</b></td><td><select name="t1">
			 <%
	String owner = session.getAttribute("user").toString();
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select file_name from share where owner_name='"+owner+"'");
	while(rs.next()){%>
		<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
		<%}%>
			 </select>
			 </td></tr>
	</tr>
	</table>
	</body>
</html>

</body>
</html>