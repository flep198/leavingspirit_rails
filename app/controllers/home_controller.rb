class HomeController < ApplicationController
  def index
    @concerts=Concert.all
    @products=Product.all

  end

end
