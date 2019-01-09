$(document).ready(function() {
	$( "#desativarUsuario" ).click(function() {
		var id = $(this).val();
		$.get( "usuario/desativar/"+id , function(response) {
			 $('#desativarUsuario').each(function() {
				  var idLoop = $(this).val();
				  if (id = idLoop) {
					  $(this).prop("disabled", true);
				  }
			  });
		});
	});
});