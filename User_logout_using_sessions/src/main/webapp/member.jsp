<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
</head>
<body>

<%

String username = null, sessionId = null, password = null;

if(request.getSession().getAttribute("username").equals(null)){
	response.sendRedirect("login.jsp");
}else{
	username = request.getSession().getAttribute("username").toString();
	password = request.getSession().getAttribute("password").toString();
	sessionId = request.getSession().getId();
}


%>



welcome <%= username %> - using session <br>
your password <%= password %> - using session <br>
session id <%= sessionId %> - using session <br>

<form action="<%= request.getContextPath() %>/MemberAreaController" method="get">

<input type="hidden" name="action" value="destroy">
<input type="submit" value="logout"> 

</form>

</body>
</html>