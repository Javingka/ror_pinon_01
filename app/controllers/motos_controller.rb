class MotosController < ApplicationController

	def index
		@motos = Moto.all
	end
	
	def show
		@moto = Moto.find(params[:id])
	end
end