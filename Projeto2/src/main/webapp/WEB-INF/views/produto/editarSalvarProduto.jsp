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
  	<title>Produto</title>
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
			        	<i class="fas fa-table"></i> Produtos: 
					</div>
			        <div class="card-body">
						<div>
							<spring:url value="/produto" var="listarProduto"/>
							<a class="btn btn-dark" href="${listarProduto }">Listar Produtos</a>
					    </div>
					    <br><br>
					    
					    <spring:url value="${produto.id == null ? '/produto/inserir' : '/produto/editar'}" var="salvar"/>
        				<form:form modelAttribute="produto" action="${salvar }" method="post">
				        	<form:hidden path="id"/>
				        	<div class="form-group">
				                <label for="nome">Nome: </label>
				                <form:input path="nome" class="form-control"/>   
				                <form:errors path="nome" cssClass="label label-danger"/>             
				            </div>
				            <div class="form-group">
				                <label for="descricao">Descrição: </label>
				                <form:input path="descricao"  class="form-control"/>    
				                <form:errors path="descricao" cssClass="label label-danger"/>          
				            </div>
				            <div class="form-group">
				                <label for="quantidade">Quantidade: </label>
				                <form:input path="quantidade"  class="form-control"/>    
				                <form:errors path="quantidade" cssClass="label label-danger"/>
				            </div>          
				            <div class="form-group">
				                <label for="custoUnitario">Custo unitário: </label>
				                <form:input path="custoUnitario"  class="form-control" type="number"/>  
				                <form:errors path="custoUnitario" cssClass="label label-danger"/>    
				            </div>
				            <div class="form-group">
				                <label for="precoVenda">Preço de venda: </label>
				                <form:input path="precoVenda"  class="form-control" type="number"/>  
				                <form:errors path="precoVenda" cssClass="label label-danger"/>    
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