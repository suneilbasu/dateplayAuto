class RefreshesController < ApplicationController
  def index
  	@refreshes = Refresh.all
  end

  def new
  	@refresh = Refresh.new
  end

  def show
  	@refresh = Refresh.find(params[:id])
  end

  def create
  	@refresh = Refresh.new(refresh_params)
  	if @refresh.save
  		redirect_to :action => 'index'
  	end
  end
  def refresh_params
    params.require(:refresh).permit(:note,:startdate,:expirydate)
  end 
end
