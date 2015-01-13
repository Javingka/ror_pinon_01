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
	$("#button_left_new_moto_a").click ->
		$("#new_moto_op_a").css('background-color', 'green')

	$("#button_right_new_moto_a").click ->
		$("#new_moto_op_a").css('background-color', 'blue')

	$("#new_moto_op_a").click ->
		$('#form_a_new_moto #moto_nombre_autor').val("nombre_test_A")

divChooseColor = ->
	opcionColores = [
		["red", "green", "blue"],
		["cyan", "yellow", "pink" ]
	]
	index = 1

	$("#button_left_new_moto_b").click ->
		$("#new_moto_op_b").css('background-color', opcionColores[index][0])

	$("#button_right_new_moto_b").click ->
		$("#new_moto_op_b").css('background-color', opcionColores[index][1])

	$("#new_moto_op_b").click ->
		$('#form_b_new_moto #moto_nombre_autor').val("nombre_test_B")

divChooseFromScratch = ->
	$("#new_moto_op_c").click ->
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
