class AusgabesController < ApplicationController

  def new
  	@ausgabe = Ausgabe.new
  end

  def create
  	@ausgabe = Ausgabe.new(params[:ausgabe])
  	if @ausgabe.save
  	  flash[:success] = "New Ausgabe successfully created"
  	  redirect_to @ausgabe
  	else
  	  render 'new'
  	end
  end

  def show
  	@ausgabe = Ausgabe.find(params[:id])
  end

  def index
  	@ausgabes = Ausgabe.all
  end
end
