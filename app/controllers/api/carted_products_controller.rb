class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all 
    render json: "index.json.jb"
  end
end