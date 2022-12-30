class HomeController < ApplicationController
  def index
    @concerts=Concert.all
  end
end
