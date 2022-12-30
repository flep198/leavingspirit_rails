class ApplicationController < ActionController::Base


  def index
    @concerts = Concert.all
  end


end
