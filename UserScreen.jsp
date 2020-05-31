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
            <li class="active"><a href="UserScreen.jsp">Home</a></li>
			<li><a href="Upload.jsp">Upload File</a></li>
            <li><a href="ViewShare.jsp">Download File</a></li>
			<li><a href="UserRevocation.jsp">Revocation</a></li>
            <li><a href="Graph.jsp">Overhead Graph</a></li>
            <li><a href="Logout.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="hbg" style="text-align:center;"><img src="images/215186.jpg" alt="" /></div>
		<br/>
		<center>
		<h2 style="font-size:30Px;color:red;"><span>Welcome <%if(request.getParameter("t1") != null)%>
	<%=session.getAttribute("user")%>! </span></h2>
	</center>
	<br/>
 
  </body>
</html>
