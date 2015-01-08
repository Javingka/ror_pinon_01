module MotosHelper

	def moto_params
		params.require(:moto).permit( :nombre_autor, :email_autor, :ciudad, :pais, :ocupación, :sel_motor, :sel_motor_color, :sel_asiento, :sel_rueda, :sel_llanta, :sel_llanta_color, :sel_estanque, :sel_estanque_color, :sel_escape, :sel_relog, :sel_tapabarro, :sel_tapabarro_color, :sel_manijar, :nombre_moto)
						
	end
end
