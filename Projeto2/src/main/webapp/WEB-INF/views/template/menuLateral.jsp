<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!-- Sidebar -->
<ul class="sidebar navbar-nav">
	<li class="nav-item active">
		<spring:url value="/home" var="home"/>
		<a class="nav-link" href="${home }"> 
			<i class="fas fa-fw fa-tachometer-alt"></i> 
			<span>Dashboard</span>
		</a>
	</li>
	<security:authorize access="hasAnyAuthority('ADMIN')">
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 
				<i class="fas fa-fw fa-folder"></i> <span>Gestão</span>
			</a>
			<div class="dropdown-menu" aria-labelledby="pagesDropdown">
				<h6 class="dropdown-header">Gestão de usuário:</h6>
				
				<spring:url value="/usuario/cadastrar" var="cadastrarUsuario"/>
				<a class="dropdown-item" href="${cadastrarUsuario }">Novo usuário</a> 
				
				<spring:url value="/usuario" var="listarUsuario"/>
				<a class="dropdown-item" href="${listarUsuario }">Listar usuários</a> 
				
				<!-- <div class="dropdown-divider"></div>
				<h6 class="dropdown-header">Other Pages:</h6>
				<a class="dropdown-item" href="404.html">404 Page</a> 
				<a class="dropdown-item" href="blank.html">Blank Page</a> -->
			</div>
		</li>
	</security:authorize>
	<li class="nav-item">
		<spring:url value="/produto" var="produto"></spring:url>
		<a class="nav-link" href="${produto }">
			<i class="fas fa-fw fa-table"></i> <span>Produtos</span>
		</a>
	</li>
</ul>