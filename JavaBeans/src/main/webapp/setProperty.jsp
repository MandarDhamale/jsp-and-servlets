<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set property</title>
</head>
<body>

<jsp:useBean id="user" class="com.mandar.User" scope="session"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="Virat"/> 
<br>
<jsp:setProperty property="lastName" name="user" value="Kohli"/> 

Values updated - Virat Kohli

</body>
</html>