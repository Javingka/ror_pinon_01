ready = ->
	adjustSelectionDivSize()

	divChoosePinonStyle()
	divChooseColor()
	divChooseFromScratch()

$(document).ready(ready)
$(document).on('page:load', ready)

adjustSelectionDivSize = ->
	cw = $('.canvas-wrap-20').width()
	$('.canvas-wrap-20').css({'height':cw+'px'})

divChoosePinonStyle = ->
	$("#new_moto_op_1").click ->
		$(this).css('background-color', 'green')
		$('#form_a_new_moto #moto_nombre_autor').val("nombre_test_A")

divChooseColor = ->
	$("#new_moto_op_2").click ->
		$(this).css('background-color', 'green')
		$('#form_b_new_moto #moto_nombre_autor').val("nombre_test_B")

divChooseFromScratch = ->
	$("#new_moto_op_3").click ->
		$(this).css('background-color', 'green')
		$('#form_c_new_moto #moto_nombre_autor').val("nombre_test_C") #partial de formulario c, o Id tiene el mismo nombre que el parcial 

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
