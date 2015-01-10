ready = ->

	$("#new_moto_op_1").click ->
		$(this).css('background-color', 'green')
		$('#form_new_moto_a #moto_nombre_autor').val("nombre_test_A")
		
	$("#new_moto_op_2").click ->
		$(this).css('background-color', 'green')
		$('#form_new_moto_b #moto_nombre_autor').val("nombre_test_B")

	$("#new_moto_op_3").click ->
		$(this).css('background-color', 'green')
		$('#moto_nombre_autor').val("nombre_test_C")

$(document).ready(ready)
$(document).on('page:load', ready)

###
$.ajax({
			type: "POST",
			url: "/motos/new",
			data: {moto: { nombre_autor: "Jav" , email_autor: "jacruzsm@gmail.com" }},
			success: (data) ->
				alert data
				return false
			error: (data) ->
				return false
		})
###
