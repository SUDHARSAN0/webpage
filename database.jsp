<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/college" user="root" password=""/>
<sql:query var="rs" dataSource="${db}">select * from student</sql:query>
<c:forEach items="${rs.rows}" var="r">
<c:out value="${r.id}"></c:out>:<c:out value="${r.name}"></c:out>:<c:out value="${r.age}"></c:out><br>
</c:forEach>
</body>
</html>