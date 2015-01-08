ready = ->

	$("#new_moto_op_1").click ->
		$(this).css('background-color', 'green')
		$.ajax({
      type: "POST",
      url: "/motos",
      data: { moto: {nombre_autor: "javier", email_autor: "whatever" } },
      success:(data) ->
        alert data.id
        return false
      error:(data) ->
        return false
    })

	$("#new_moto_op_2").click ->
		$(this).css('background-color', 'green')

	$("#new_moto_op_3").click ->
		$(this).css('background-color', 'green')

$(document).ready(ready)
$(document).on('page:load', ready)
