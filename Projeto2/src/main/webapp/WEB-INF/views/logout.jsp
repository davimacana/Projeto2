<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>Logout</title>
    
    <c:import url="template/imports.jsp"></c:import>
    
</head>
<body class="bg-dark">

	<div class="container" style="width: fit-content;">
		<div class="card card-login mx-auto mt-5">
			<div class="card-body">
				<c:if test="${not empty logout}" >
	                <p><font color="red">${logout}</font></p>
	                <spring:url value="/home" var="home"></spring:url>
					<a class="nav-link" href="${home }">
						<i class=""></i> <span>Login</span>
					</a>
	            </c:if>	
			</div>
		</div>
	</div>
</body>
</html>