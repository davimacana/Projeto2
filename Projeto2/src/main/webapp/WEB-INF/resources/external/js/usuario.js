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
	
	$( "#desativarUsuarioPost" ).click(function() {
		var url = "usuario/desativarPost/";
		$.ajax({
			type: "POST",
			headers: {"X-CSRF-TOKEN": $("input[name='_csrf']").val()},
			url: url,
			/*data: data,*/
			/*dataType: dataType,*/
			success : function(result) {
		        alert("Funcionou !");
		    }
		});
	});
});