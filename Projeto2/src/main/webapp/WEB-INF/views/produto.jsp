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
  	<title>SB Admin - Tables</title>
	<c:import url="template/imports.jsp"></c:import>
</head>

<body id="page-top">
	<c:import url="template/menuSuperior.jsp"></c:import>
	<div id="wrapper">
		<c:import url="template/menuLateral.jsp"></c:import>
		<div id="content-wrapper">
			<div class="container-fluid">
			<c:import url="template/dashboard.jsp"></c:import>
				<div class="card mb-2">
			    	<div class="card-header">
			        	<i class="fas fa-table"></i> Produtos: 
					</div>
			        <div class="card-body">
			        	<div class="table-responsive">
			            	<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			                	<thead>
			                   		<tr>
			                     		<th>Código</th>
					                    <th>Nome</th>
					                    <th>Descrição</th>
					                    <th>Quantidade</th>
					                    <th>Custo unitário</th>
					                    <th>Preço de venda</th>
					                    <th>Data de cadastro</th>
			                  		</tr>
			                 	</thead>
			                 	<tfoot>
			                    	<tr>
					                	<th>Código</th>
					                    <th>Nome</th>
					                    <th>Descrição</th>
					                    <th>Quantidade</th>
					                    <th>Custo unitário</th>
					                    <th>Preço de venda</th>
					                    <th>Data de cadastro</th>
			                    	</tr>
			                 	</tfoot>
								<tbody>
			                 		<c:forEach items="${produtos }" var="produto">
			                 			<tr>
						                    <td>${produto.id }</td>
						                    <td>${produto.nome }</td>
						                    <td>${produto.descricao }</td>
						                    <td>${produto.quantidade }</td>
						                    <td>R$ ${produto.custoUnitario }</td>
						                	<td>R$ ${produto.precoVenda }</td>
						                	<td><f:formatDate value="${produto.dataCadastro }"/></td>
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
		<c:import url="template/footer.jsp"></c:import>
	</div>
	<c:import url="template/logoutModal.jsp"></c:import>
</body>
</html>