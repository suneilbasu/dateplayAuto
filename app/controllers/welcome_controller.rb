class WelcomeController < ApplicationController
  def index
    @refreshes = Refresh.all
  end
  def new
  	@refresh = Refresh.new
  end

end
