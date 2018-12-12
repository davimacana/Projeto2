<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	<meta name="description" content="">
  	<meta name="author" content="">
  	<title>Usuario</title>
	<c:import url="../template/imports.jsp"></c:import>
</head>

<body id="page-top">
	<c:import url="../template/menuSuperior.jsp"></c:import>
	<div id="wrapper">
		<c:import url="../template/menuLateral.jsp"></c:import>
		<div id="content-wrapper">
			<div class="container-fluid">
			<c:import url="../template/dashboard.jsp"></c:import>
				<div class="card mb-2">
			    	<div class="card-header">
			        	<i class="fas fa-table"></i> Usuario: 
					</div>
			        <div class="card-body">
						<div>
							<spring:url value="/usuario" var="listarUsuario"/>
							<a class="btn btn-dark" href="${listarUsuario }">Listar Usuarios</a>
					    </div>
					    <br><br>
					    
					    <spring:url value="${usuario.id == null ? '/usuario/inserir' : '/usuario/editar'}" var="salvar"/>
        				<form:form modelAttribute="usuario" action="${salvar }" method="post">
				        	<form:hidden path="id"/>
				        	<form:hidden path="endereco.id"/>
				        	<div class="form-group">
				                <label for="nome">Email: </label>
				                <form:input path="email" class="form-control"/>                
				            </div>
				            <div class="form-group">
				                <label for="nomeCompleto">Nome: </label>
				                <form:input path="nomeCompleto"  class="form-control"/>              
				            </div>
				            <div class="form-group">
				                <label for="password">Senha: </label>  
				                <form:input path="password" type="password" class="form-control"/>   
				            </div>          
				            <div class="form-group">
				            	<label for="perfil">Perfil: </label><br>
				                <form:select path="perfil" required="true">
			                        <form:option value="ADMIN" label="ADMIN" />
			                        <form:option value="USER" label="USER" />
			                    </form:select>    
				            </div>
				            <div class="form-group">
				            	<label for="endereco.bairro">Bairro: </label>
				                <form:input path="endereco.bairro"  class="form-control"/>
				            </div>
				            <div class="form-group">
				            	<label for="endereco.rua">Rua: </label>
				                <form:input path="endereco.rua"  class="form-control"/>
				            </div>
				            <div class="form-group">
				            	<label for="endereco.numero">Número: </label>
				                <form:input path="endereco.numero"  class="form-control"/>
				            </div>
				            <div class="form-group">
				            	<label for="endereco.cep">Cep: </label>
				                <form:input path="endereco.cep"  class="form-control"/>
				            </div>
				            <div class="form-group">
				            	<label for="endereco.uf">Uf: </label>
				                <form:input path="endereco.uf"  class="form-control"/>
				            </div>
				            <div class="form-group">
				                <button type="submit" class="btn btn-primary">Confirmar</button>
				            </div>
				        </form:form>
					</div>
				</div>
			</div>
		</div>
		<c:import url="../template/footer.jsp"></c:import>
	</div>
	<c:import url="../template/logoutModal.jsp"></c:import>
</body>
</html>