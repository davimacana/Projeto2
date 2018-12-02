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
			<div class="card-body">
				<spring:url value="/login" var="login" />
				<form:form modelAttribute="usuario" class="form-signin" method="post" action="${login }">
					<div class="form-group">
						<div class="form-label-group">
							<form:input path="login" class="form-control" placeholder="Endereço de email"/> 
							<form:errors path="login" cssClass="label label-danger"/>
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<form:input path="senha" type="password" class="form-control" placeholder="Senha"/>
							<form:errors path="senha" cssClass="label label-danger"/>
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
				</form:form>
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