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
            <li class="active"><a href="ViewShare.jsp">Download File</a></li>
			<li><a href="UserRevocation.jsp">Revocation</a></li>
            <li><a href="Graph.jsp">Overhead Graph</a></li>
            <li><a href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
         <div class="hbg" style="text-align:center;"><img src="images/down.jpg" alt="" />
		<br/>
		<center>
		<h2 style="font-size:20Px;color:red;"><%if(request.getParameter("t1") != null)%>
	<%=session.getAttribute("user")%>! </h2>
	</center>
	<%
			
	String res = request.getParameter("t1");
	if(res != null){
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		
		out.println("<center><font size=3 color=red>"+res+"</font></center>");
	}%>
	<h3 style="font-size:20Px;text-align:center;"><b>Download File</b></h3>
	
			<br/>

<table border="1" align="center" width="100%">
			<tr style="color:red;"><th>Owner Name</th><th>Share Attributes</th><th>Policy</th><th>File Name</th>
			<th>Download</th>
			<tr>
	<%
	String owner = session.getAttribute("user").toString();
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from share");
	while(rs.next()){
		String user = rs.getString(1);
		String att = rs.getString(2);
		String policy = rs.getString(3);
		String file = rs.getString(4);
		
		%>
	<tr><td><font size="3" color="black"><%=user%></td>
	<td><font size="3" color="black"><%=att%></td>
	<td><font size="3" color="black"><%=policy%></td>
	<td><font size="3" color="black"><%=file%></td>
	<td><a href="Download.jsp?t1=<%=user%>&t2=<%=file%>&t3=<%=policy%>"><font size="3" color="black">Click Here</font></a></td>
	<%}%>
	</tr>
	</table>
	</div>
	</body>
</html>

</body>
</html>