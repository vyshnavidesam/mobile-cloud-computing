<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="java.net.Socket"%>
<%@page import="com.DBCon"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PHR</title>
</head>
<body>
<%!
byte b[];
%>
<%
String datauser = session.getAttribute("user").toString().trim();
String user = request.getParameter("t1");
String file = request.getParameter("t2");
String share = request.getParameter("t3");

System.out.println(datauser+" "+user+" "+share.indexOf(datauser));
if(share.indexOf(datauser) != -1){
Socket socket = new Socket("localhost",3333);
ObjectOutputStream oout = new ObjectOutputStream(socket.getOutputStream());
Object req[] = {"decrypt",user,file};
oout.writeObject(req);
oout.flush();
ObjectInputStream oin = new ObjectInputStream(socket.getInputStream());
Object res[] = (Object[])oin.readObject();
String msg = (String)res[0];
byte dec[] = (byte[])res[1];
if(msg.equals("success")){
	response.setHeader("Content-Disposition", "attachment;filename=\"" +file + "\"");
	response.setHeader("Content-Type", "application/octet-stream;");
	java.io.OutputStream os=response.getOutputStream();
	os.write(dec,0,dec.length);
	os.flush();
	os.close();
}else{
	out.println("U dont have access control");
}
}else{
	out.println("U dont have access control!");
}
%>
</body>
</html>
	
	
	