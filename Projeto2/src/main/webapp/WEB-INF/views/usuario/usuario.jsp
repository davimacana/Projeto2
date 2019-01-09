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
	<script src="/Projeto2/static/external/js/usuario.js"></script>
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
			        	<i class="fas fa-table"></i> Usuarios: 
					</div>
					<div class="card-body">
			        	<div>
							<spring:url value="/usuario/cadastrar" var="inserirUsuario"/>
							<a class="btn btn-dark" href="${inserirUsuario }">Inserir Usuario</a>
					    </div>
					    <br><br>
						<div class="${message == null ? 'panel-default' : 'panel-success'}">
							<div class="table-responsive">
				            	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				                	<thead>
				                   		<tr>
				                     		<th>Email</th>
						                    <th>Último login</th>
						                    <th>Nome</th>
						                    <th>Perfil</th>
						                    <th>Ação</th>
				                  		</tr>
				                 	</thead>
				                 	<tfoot>
				                    	<tr>
						                	<th>Email</th>
						                    <th>Último login</th>
						                    <th>Nome</th>
						                    <th>Perfil</th>
						                    <th>Ação</th>
				                    	</tr>
				                 	</tfoot>
									<tbody>
				                 		<c:forEach items="${usuarios }" var="usuario">
				                 			<tr>
							                    <td>${usuario.email }</td>
							                    <td><f:formatDate value="${usuario.ultimoLogin }"/></td>
							                    <td>${usuario.nomeCompleto	 }</td>
							                    <td>${usuario.perfil }</td>
							                    <td>
							                		<spring:url value="/usuario/editar/${usuario.id }" var="editar"/>
	                        						<a class="btn btn-info" href="${editar }" >Editar</a>
	                        						<button type="button" class="btn btn-danger" id="desativarUsuario" value="${usuario.id }">Desativar</button>
	                        						<button type="button" class="btn btn-danger" id="desativarUsuarioPost" value="${usuario.id }">Desativar Post</button>
	                        					</td>
				               	   			</tr>
				                 		</c:forEach>
				                	</tbody>
								</table>
							</div>
						</div>
			        <!-- <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div> -->
					</div>
				</div>
			</div>
			<c:import url="../template/footer.jsp"></c:import>
		</div>
	<c:import url="../template/logoutModal.jsp"></c:import>
	</div>
</body>
</html>