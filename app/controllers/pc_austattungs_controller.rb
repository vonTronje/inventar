class PcAustattungsController < ApplicationController

  def index
  	@pc_austattungs = PcAustattung.all
  end

  def new
  	@pc_austattung = PcAustattung.new
  end

  def create
  	@pc_austattung = PcAustattung.new(params[:pc_austattung])
  	if @pc_austattung.save
	  flash[:success] = "PC-Austattung successfully created"
  	  redirect_to @pc_austattung
  	else
  	  render 'new'
  	end
  end

  def show
  	@pc_austattung = PcAustattung.find(params[:id])
  end
end