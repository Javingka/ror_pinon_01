class MotosController < ApplicationController
	include MotosHelper

	def index
		@motos = Moto.all
	end
	
	def show
		@moto = Moto.find(params[:id])
	end

	def new
		@moto = Moto.new

		respond_to do |format|
      format.html #new.html.erb
      format.json { render json: @moto}
    end

	end
	
	def create
    @moto = Moto.new(moto_params)

    respond_to do |format|
      if @moto.save
#				puts "format: "+format.class.name
        format.html { redirect_to @moto, format: :html, notice: "Save process completed!" }
#        format.json { render json: @moto, status: :created, location: @moto }
#				redirect_to [:edit, @moto]
      else
        format.html { 
          flash.now[:notice]="Save proccess coudn't be completed!" 
          render :new 
        }
        format.json { render json: @moto.errors, status: :unprocessable_entity}
      end
    end
  end

	def edit
		@moto = Moto.find(params[:id])
	end

end
