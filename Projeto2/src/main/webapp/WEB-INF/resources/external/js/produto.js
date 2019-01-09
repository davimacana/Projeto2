/*<input type="hidden" name="_csrf" value="e2b26216-3592-4726-9a24-66a7e2f1ad5f">*/
$(document).ready(function() {
	$( "#" ).click(function() {
		$.ajax({
			type: "POST",
			headers: {"X-CSRF-TOKEN": $("input[name='_csrf']").val()},
			url: url,
			data: data,
			dataType: dataType,
			success : function(result) {
		        alert("Funcionou !");
		    }
		});
	});
});