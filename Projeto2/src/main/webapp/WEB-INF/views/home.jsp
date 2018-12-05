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
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Dashboard</title>
	<c:import url="template/imports.jsp"></c:import>
</head>

<body id="page-top">
	<c:import url="template/menuSuperior.jsp"></c:import>
	<div id="wrapper">
		<c:import url="template/menuLateral.jsp"></c:import>
		<div id="content-wrapper">
			<div class="container-fluid">
				<c:import url="template/dashboard.jsp"></c:import>
			</div>
		</div>
		<c:import url="template/footer.jsp"></c:import>
	</div>
	<c:import url="template/logoutModal.jsp"></c:import>
</body>
</html>
