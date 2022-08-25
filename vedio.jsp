<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("uname")==null)
{
	response.sendRedirect("login.jsp");
}
%>
vedios
<iframe width="560" height="315" src="https://www.youtube.com/embed/gQLQ0t9B5yk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<a href="welcome.jsp">welcome page</a>
<form action="logout">
<input type="submit" value="logout">
</form>
</body>
</html>