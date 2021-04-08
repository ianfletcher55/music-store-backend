class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render "index.json.jb"
  end
end
