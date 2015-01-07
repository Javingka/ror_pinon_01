ready = ->

	$("#new_moto_op_1").click -> 
		$(this).css('background-color', 'green')

	$("#new_moto_op_2").click -> 
		$(this).css('background-color', 'green')

	$("#new_moto_op_3").click -> 
		$(this).css('background-color', 'green')

$(document).ready(ready)
$(document).on('page:load', ready)
