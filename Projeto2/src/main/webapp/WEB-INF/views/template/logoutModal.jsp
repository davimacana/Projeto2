<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Logout Modal-->
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"> <i
	class="fas fa-angle-up"></i>
</a>
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Deseja sair ?</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">Selecione "Logout" abaixo se você estiver pronto para encerrar sua sessão atual.</div>
			<div class="modal-footer">
				<form action="<c:url value="/logout"/>" method="post">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
				   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	               <button class="btn btn-primary" type="submit">Logout</button>
	           </form>
			</div>
		</div>
	</div>
</div>