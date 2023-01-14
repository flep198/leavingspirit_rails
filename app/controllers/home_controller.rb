class HomeController < ApplicationController
  def index
    @concerts=Concert.all
    @products=Product.all

  end

    def data_policy
  end
end
