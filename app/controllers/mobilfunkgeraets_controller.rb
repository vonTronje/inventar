class MobilfunkgeraetsController < ApplicationController

  def new
  	@mobilfunkgeraet = Mobilfunkgeraet.new
  end

  def create
  	@mobilfunkgeraet = Mobilfunkgeraet.new(params[:mobilfunkgeraet])
  	if @mobilfunkgeraet.save
  	  flash[:success] = "Mobilfunkgeraet successfully created"
  	  redirect_to @mobilfunkgeraet
  	else
  	  render 'new'
  	end
  end

  def index
  	@mobilfunkgeraets = Mobilfunkgeraet.all
  end

  def show
  	@mobilfunkgeraet = Mobilfunkgeraet.find(params[:id])
  end
end
