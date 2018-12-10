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
    
	<title>Login</title>
    
    <c:import url="template/imports.jsp"></c:import>
    
</head>
<body class="bg-dark">

	<div class="container" style="width: fit-content;">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<!--<p>usuario: root@email.com</p>
			<p>senha: root</p> -->
			
			<div class="card-body">
				<c:if test="${not empty error}" >
	                <p><font color="red">${error}</font></p>
	            </c:if>
	            <spring:url value="/auth/login" var="login"></spring:url>
				<form name="f" action="${login }" method="POST">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<div class="form-group">
						<div class="form-label-group">
							<input type='email' name='j_username' required autofocus> 
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<input type='password' name='j_password' required>
						</div>
					</div>
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox" value="remember-me">
								Remember Password
							</label>
						</div>
					</div>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="register.html">Register an
						Account</a> <a class="d-block small" href="forgot-password.html">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>