class ClothesController < ApplicationController
  def index
  end

  def new
  	@clothe = Clothe.new
  end
  def create
  	#Clothe.create type: params["clothe"][:type], color: params[:color], date: params[:date], instruction: params[:instruction], label: params[:label], story: params[:story], location_id: params[:location_id], composition_id: params[:composition_id], history_id: params[:history_id], picture: params[:picture]
  	@clothe = Clothe.new clothe_params
  	@clothe.save
  	redirect_to @clothe
  end

  def show
  	@clothe = Clothe.find(params[:id])
  end

  def clothe_params
  	params.require(:clothe).permit(:size, :clothe_type, :color, :date, :instruction, :label, :story, :location_id, :composition_id, :history_id, :picture)
  end
end